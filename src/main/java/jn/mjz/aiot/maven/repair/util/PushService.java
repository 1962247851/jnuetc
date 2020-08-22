package jn.mjz.aiot.maven.repair.util;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.xiaomi.xmpush.server.Constants;
import com.xiaomi.xmpush.server.Message;
import com.xiaomi.xmpush.server.Sender;
import jn.mjz.aiot.maven.repair.po.Data;
import jn.mjz.aiot.maven.repair.po.DataChangeLog;
import jn.mjz.aiot.maven.repair.po.Version;
import jn.mjz.aiot.maven.repair.service.DataChangeLogService;
import jn.mjz.aiot.maven.repair.service.DataService;
import okhttp3.*;
import org.json.simple.JSONObject;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Service;

import java.io.IOException;

/**
 * @author 19622
 */
@Service
public class PushService {
    private static final String WX_APP_ID = "----------";
    private static final String WX_APP_SECRET = "----------";
    private static final String WX_SUBSCRIBE_TEMPLATE_ID = "-----------Vs";
    //    private static final String APP_SECRET_KEY = "dEs1/VOStf+WBX0/h2fYow==";
    private static final String APP_SECRET_KEY = "----------";
    private static final String MY_PACKAGE_NAME = "jn.mjz.aiot.jnuetc.kotlin";
    private static final String CHANNEL_DATA_STATE_CHANGE = "data_state_change";
    private static final String CHANNEL_DATA_INFO_CHANGE = "data_info_changed";
    private static final String CHANNEL_NEW_VERSION = "new_version";


    private final DataChangeLogService dataChangeLogService;
    private final DataService dataService;

    public PushService(DataChangeLogService dataChangeLogService, DataService dataService) {
        this.dataChangeLogService = dataChangeLogService;
        this.dataService = dataService;
    }

    /**
     * 发送新版本通知
     *
     * @param version 新版本
     * @throws IOException    IOException
     * @throws ParseException ParseException
     */
    public void sendNewVersionBroadcast(Version version) throws IOException, ParseException {
        Constants.useOfficial();
        Sender sender = new Sender(APP_SECRET_KEY);
        Message message;
        String url = version.getUrl();
        if (!url.isEmpty() && (url.startsWith("http://") || url.startsWith("https://"))) {
            message = new Message.Builder()
                    .title("有新版本啦(点我直接打开浏览器下载)")
                    .description(version.getVersion() + " " + version.getMessage().replace("。", ""))
                    .notifyId(Math.toIntExact(version.getId()))
                    .restrictedPackageName(MY_PACKAGE_NAME)
                    .notifyType(-1)
                    .extra("channel_id", CHANNEL_NEW_VERSION)
                    .extra(Constants.EXTRA_PARAM_NOTIFY_EFFECT, Constants.NOTIFY_WEB)
                    .extra(Constants.EXTRA_PARAM_WEB_URI, url)
                    .build();
        } else {
            message = new Message.Builder()
                    .title("有新版本啦：" + version.getVersion())
                    .description(version.getMessage().replace("。", ""))
                    .notifyId(Math.toIntExact(version.getId()))
                    .restrictedPackageName(MY_PACKAGE_NAME)
                    .notifyType(-1)
                    .extra("channel_id", CHANNEL_NEW_VERSION)
                    .build();
        }
        //向所有设备发送消息
        sender.broadcastAll(message, 3);
    }

    /**
     * 小米推送
     *
     * @param data 报修单
     * @throws IOException    IOException
     * @throws ParseException ParseException
     */
    public void sendDataMiBroadcast(Data data, Data oldData, String name) throws IOException, ParseException {
        String channelId = CHANNEL_DATA_STATE_CHANGE;
        Constants.useOfficial();
        Sender sender = new Sender(APP_SECRET_KEY);
        String title = String.format("%s - %d", data.getLocal(), data.getId());
        String changeInfo, description;
        switch (data.getState()) {
            case 0:
                if (oldData == null) {
                    //新的报修单
                    changeInfo = data.getMessage();
                } else {
                    //报修单信息修改
                    changeInfo = "将" + Data.differentBetween(data, oldData);
                    channelId = CHANNEL_DATA_INFO_CHANGE;
                }
                break;
            case 1:
                if (oldData.getState() == 0) {
                    //接单
                    changeInfo = "已接单";
                } else {
                    if (data.getRepairer().equals(oldData.getRepairer())) {
                        //报修单信息修改
                        changeInfo = "将" + Data.differentBetween(data, oldData);
                        channelId = CHANNEL_DATA_INFO_CHANGE;
                    } else {
                        //转让
                        changeInfo = "已转让给" + data.getRepairer();
                    }
                }
                break;
            default:
                if (!oldData.getState().equals(data.getState())) {
                    //反馈
                    changeInfo = "已提交维修反馈";
                } else {
                    //报修单信息修改
                    changeInfo = "将" + Data.differentBetween(data, oldData);
                    channelId = CHANNEL_DATA_INFO_CHANGE;
                }
        }

        if (oldData != null) {
            description = name + changeInfo;
            DataChangeLog dataChangeLog = new DataChangeLog();
            dataChangeLog.setDataId(oldData.getId());
            dataChangeLog.setChangeInfo(changeInfo);
            dataChangeLog.setName(name);
            dataChangeLogService.insert(dataChangeLog);
        } else {
            description = changeInfo;
        }

        Message message = new Message.Builder()
                .title(title)
                .description(description)
                //不同的id不会覆盖
                .notifyId(Math.toIntExact(data.getId()))
                //透传消息可选
                .payload(data.toString())
                .restrictedPackageName(MY_PACKAGE_NAME)
                // 使用默认提示音提示
                //DEFAULT_SOUND = 1;
                //DEFAULT_VIBRATE = 2;
                //DEFAULT_LIGHTS = 4;
                //DEFAULT_ALL = -1;
                .notifyType(-1)
                // 设置channel id, 必须配
                .extra("channel_id", channelId)
                .extra("user_name", name)
                .build();
        //根据topic, 发送消息到指定一组设备上
        sender.broadcast(message, String.valueOf(data.getDistrict()), 3);
    }

    /**
     * 根据openId下发用户一次性订阅的订阅消息
     *
     * @param data   报修单
     * @param openId 用户关于小程序的唯一识别码
     * @return 是否成功
     */
    public boolean sendWeiXinSubscribeMessage(Data data, String openId) {
        String url = String.format("https://api.weixin.qq.com/cgi-bin/message/subscribe/send?access_token=%s", getAccessToken());
        JSONObject data1 = new JSONObject();
        data1.put("value", data.getName());
        JSONObject data2 = new JSONObject();
        data2.put("value", data.getId());
        JSONObject data3 = new JSONObject();
        data3.put("value", data.getLocal());
        JSONObject data4 = new JSONObject();
        data4.put("value", DateUtil.getDateAndTime(data.getDate(), " "));
        JSONObject data5 = new JSONObject();
        data5.put("value", "型号：" + data.getModel() + "\n故障详情：" + data.getMessage());

        JSONObject jsonObject = new JSONObject();
        jsonObject.put("thing4", data3);
        jsonObject.put("number6", data2);
        jsonObject.put("date1", data4);
        jsonObject.put("name2", data1);
        jsonObject.put("thing5", data5);

        JSONObject json = new JSONObject();
        json.put("touser", openId);
        json.put("template_id", WX_SUBSCRIBE_TEMPLATE_ID);
        json.put("data", jsonObject);
        json.put("page", "/pages/tasks/tasks");
        String result = HttpUtil.Sync.postString(url, json.toString());
        return result != null && result.contains("ok");
    }

    /**
     * 获取accessToken
     *
     * @return accessToken
     */
    private String getAccessToken() {
        String url = String.format("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=%s&secret=%s", WX_APP_ID, WX_APP_SECRET);
        //{"access_token":"29_xO4ztjyK9Eb4-6o37nJel2vnpFBcTe17V8e0XAGX3IhFBmnEutWa0OKjlywhDf2Ef5SyEQ8-cl1IA8U-xCn7_SHWwEllin-YE99-RNGcK0iKUx7O4nWub45Hd6o-6Qq9izbGVHZ3NFVN2ugeFPVeAIABLR","expires_in":7200}
        JsonObject jsonObject = GsonUtil.getInstance().fromJson(HttpUtil.Sync.post(url, null), JsonObject.class);
        return jsonObject.get("access_token").getAsString();
    }

    /**
     * 获取用户关于小程序的唯一识别码
     *
     * @param code code
     * @return openId
     */
    public String getUserOpenId(String code) {
        String openId = null;
        String url = "https://api.weixin.qq.com/sns/jscode2session?" +
                "appid=" + WX_APP_ID
                + "&secret=" + WX_APP_SECRET
                + "&js_code=" + code
                + "&grant_type=authorization_code";
        OkHttpClient okHttpClient = new OkHttpClient();
        final Request request = new Request.Builder()
                .url(url)
                .build();
        Call call = okHttpClient.newCall(request);
        try {
            Response response = call.execute();
            ResponseBody body = response.body();
            if (body != null) {
                //{"session_key":"xxx","openid":"xxx"}
                //{"errcode":40163,"errmsg":"code been used, hints: [ req_id: Kgian7aLRa- ]"}
                JsonObject jsonObject = GsonUtil.getInstance().fromJson(body.string(), JsonObject.class);
                System.out.println(jsonObject.toString());
                JsonElement openidElement = jsonObject.get("openid");
                if (openidElement != null) {
                    openId = openidElement.getAsString();
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return openId;
    }
}
