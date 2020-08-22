package jn.mjz.aiot.maven.repair.web;

import com.google.gson.JsonObject;
import jn.mjz.aiot.maven.repair.po.User;
import jn.mjz.aiot.maven.repair.po.Version;
import jn.mjz.aiot.maven.repair.service.UserService;
import jn.mjz.aiot.maven.repair.service.VersionService;
import jn.mjz.aiot.maven.repair.util.GsonUtil;
import jn.mjz.aiot.maven.repair.util.PushService;
import org.json.simple.parser.ParseException;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.List;

/**
 * @author 19622
 */
@Controller
@RequestMapping("version")
public class VersionController {

    private final VersionService versionService;
    private final PushService pushService;
    private final UserService userService;


    public VersionController(VersionService versionService, PushService pushService, UserService userService) {
        this.versionService = versionService;
        this.pushService = pushService;
        this.userService = userService;
    }

    @PostMapping(value = "queryAll", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public String queryAll() {
        List<Version> versions = versionService.queryAll();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(MyResponse.ERROR_PROPERTY, MyResponse.SUCCESS);
        jsonObject.addProperty(MyResponse.MSG_PROPERTY, "获取所有更新记录成功");
        jsonObject.addProperty(MyResponse.BODY_PROPERTY, GsonUtil.getInstance().toJson(versions));
        return jsonObject.toString();
    }

    @PostMapping(value = "insert", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public String insert(
            @RequestParam("versionJson") String versionJson,
            @RequestParam("userJson") String userJson
    ) {
        JsonObject jsonObject = new JsonObject();
        String msg;
        Integer error;
        User user;
        Version version;
        try {
            version = GsonUtil.getInstance().fromJson(versionJson, Version.class);
            user = GsonUtil.getInstance().fromJson(userJson, User.class);
        } catch (Exception e) {
            jsonObject.addProperty(MyResponse.ERROR_PROPERTY, MyResponse.ERROR);
            jsonObject.addProperty(MyResponse.MSG_PROPERTY, "请传入正确的数据");
            return jsonObject.toString();
        }
        if (user == null) {
            msg = "用户不存在";
            error = MyResponse.FAILED;
        } else {
            User selectBySno = userService.selectBySno(user.getSno());
            if (selectBySno == null) {
                msg = "用户不存在";
                error = MyResponse.FAILED;
            } else {
                System.out.println("selectBySno" + selectBySno.toString());
                if (selectBySno.getPassword().equals(user.getPassword())) {
                    if (selectBySno.getRootLevel() != 0 && selectBySno.getRootLevel() != 1 && selectBySno.getRootLevel() != 2) {
                        try {
                            Version insert = versionService.insert(version);
                            if (insert != null) {
                                pushService.sendNewVersionBroadcast(insert);
                                msg = "发布成功";
                                error = MyResponse.SUCCESS;
                            } else {
                                msg = "版本新增出错，发布失败";
                                error = MyResponse.ERROR;
                            }
                        } catch (IOException | ParseException e) {
                            msg = "发布失败";
                            error = MyResponse.ERROR;
                            e.printStackTrace();
                        }
                    } else {
                        msg = "用户权限不足";
                        error = MyResponse.FAILED;
                    }
                } else {
                    msg = "用户校验失败";
                    error = MyResponse.FAILED;
                }
            }
        }
        jsonObject.addProperty(MyResponse.ERROR_PROPERTY, error);
        jsonObject.addProperty(MyResponse.MSG_PROPERTY, msg);
        return jsonObject.toString();
    }
}
