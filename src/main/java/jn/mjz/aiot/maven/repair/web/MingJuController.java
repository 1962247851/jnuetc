package jn.mjz.aiot.maven.repair.web;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import jn.mjz.aiot.maven.repair.po.MingJu;
import jn.mjz.aiot.maven.repair.service.MingJuService;
import jn.mjz.aiot.maven.repair.util.GsonUtil;
import jn.mjz.aiot.maven.repair.util.HttpUtil;
import okhttp3.Response;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 19622
 */
@Controller
@RequestMapping("mingju")
public class MingJuController {
    private final MingJuService mingJuService;

    public MingJuController(MingJuService mingJuService) {
        this.mingJuService = mingJuService;
    }

    @PostMapping(value = "download", produces = MediaType.TEXT_PLAIN_VALUE)
    @ResponseBody
    public String mingju(
            @RequestParam String page,
            @RequestParam String c,
            @RequestParam String t
    ) {
        Map<String, Object> params = new HashMap<>(4);
        //主题
        params.put("c", c);
        //分类
        params.put("t", t);
        //页数
        params.put("page", page);
        params.put("token", "gswapi");
        HttpUtil.AsyncPost.haveResponse("https://app.gushiwen.cn/api/mingju/Default10.aspx", params, new HttpUtil.HttpUtilCallBack<String>() {
            @Override
            public void onResponse(Response response, String result) {
                JsonObject jsonObject = GsonUtil.getInstance().fromJson(result, JsonObject.class);
                JsonArray mingjus = jsonObject.get("mingjus").getAsJsonArray();
                List<MingJu> mingJuList = new ArrayList<>();
                for (int i = 0; i < mingjus.size(); i++) {
                    JsonObject mingju = mingjus.get(i).getAsJsonObject();
                    String content = mingju.get("nameStr").getAsString();
                    String author = mingju.get("author").getAsString();
                    String shiName = mingju.get("shiName").getAsString();
                    MingJu mingJu = new MingJu();
                    mingJu.setContent(content);
                    mingJu.setAuthor(author);
                    mingJu.setShiName(shiName);
                    mingJu.setTopic(c);
                    mingJu.setType("");
                    mingJuList.add(mingJu);
                }
                mingJuService.insertAll(mingJuList);
                System.out.println(mingJuList.size());
            }

            @Override
            public void onFailure(IOException e) {
                System.out.println(e.getMessage());
            }
        });
        return "成功";
    }

    @PostMapping(value = "getMingJu", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public String getRandomMingJu(
            @RequestParam(required = false) String topic,
            @RequestParam(required = false, defaultValue = "") String type
    ) {
        JsonObject jsonObject = new JsonObject();
        String msg;
        int error;
        MingJu randomMingJu;
        if (topic != null) {
            randomMingJu = mingJuService.getRandomMingJuByTopicAndType(topic, type);
        } else {
            randomMingJu = mingJuService.getRandomMingJu();
        }
        if (randomMingJu == null) {
            msg = "未获取到相关名句，请检查参数";
            error = MyResponse.FAILED;
        } else {
            msg = "获取名句成功";
            error = MyResponse.SUCCESS;
            jsonObject.addProperty(MyResponse.BODY_PROPERTY, randomMingJu.toString());
        }
        jsonObject.addProperty(MyResponse.ERROR_PROPERTY, error);
        jsonObject.addProperty(MyResponse.MSG_PROPERTY, msg);
        return jsonObject.toString();
    }
}
