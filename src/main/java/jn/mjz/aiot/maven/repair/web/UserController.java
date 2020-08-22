package jn.mjz.aiot.maven.repair.web;

import com.google.gson.JsonObject;
import jn.mjz.aiot.maven.repair.po.Code;
import jn.mjz.aiot.maven.repair.po.User;
import jn.mjz.aiot.maven.repair.service.CodeService;
import jn.mjz.aiot.maven.repair.service.UserService;
import jn.mjz.aiot.maven.repair.util.GsonUtil;
import jn.mjz.aiot.maven.repair.util.PushService;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author 19622
 */
@Controller
@RequestMapping("user")
public class UserController {

    private final UserService userService;
    private final CodeService codeService;
    private final PushService pushService;

    public UserController(UserService userService, CodeService codeService, PushService pushService) {
        this.userService = userService;
        this.codeService = codeService;
        this.pushService = pushService;
    }

    @PostMapping(value = "register",
            produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public String register(
            @RequestParam Integer code,
            @RequestParam String name,
            @RequestParam String sex,
            @RequestParam String sno,
            @RequestParam String password,
            @RequestParam String group) {
        String msg;
        Integer error;
        JsonObject jsonObject = new JsonObject();

        Code code1 = codeService.query(code);
        //不存在邀请码
        if (code1 == null) {
            msg = "邀请码不存在";
            error = MyResponse.FAILED;
        } else {
            if (userService.selectBySno(sno) != null) {
                msg = "学号已被注册";
                error = MyResponse.ERROR;
            } else {
                User user = new User();
                user.setRootLevel(0);
                user.setRegDate(System.currentTimeMillis());
                user.setUserName(name);
                user.setSex("男".equals(sex) ? 1 : 0);
                user.setSno(sno);
                user.setPassword(password);
                user.setWhichGroup("北区".equals(group) ? 0 : 1);
                User insert = userService.insert(user);
                codeService.delete(code);
                msg = "注册成功";
                error = MyResponse.SUCCESS;
                jsonObject.addProperty(MyResponse.BODY_PROPERTY, insert.toString());
            }
        }

        jsonObject.addProperty(MyResponse.ERROR_PROPERTY, error);
        jsonObject.addProperty(MyResponse.MSG_PROPERTY, msg);
        return jsonObject.toString();
    }

    @PostMapping(value = "login",
            produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public String login(
            @RequestParam String sno,
            @RequestParam String password) {
        JsonObject jsonObject = new JsonObject();
        Integer error;
        String msg;
        User user = userService.selectBySno(sno);
        if (user != null) {
            if (user.getPassword().equals(password)) {
                error = MyResponse.SUCCESS;
                msg = "登录成功";
            } else {
                error = MyResponse.FAILED;
                msg = "密码错误";
                user = null;
            }
        } else {
            error = MyResponse.ERROR;
            msg = "学号不存在";
            user = null;
        }
        jsonObject.addProperty(MyResponse.ERROR_PROPERTY, error);
        jsonObject.addProperty(MyResponse.MSG_PROPERTY, msg);
        if (user != null) {
            jsonObject.addProperty(MyResponse.BODY_PROPERTY, user.toString());
        }
        return jsonObject.toString();
    }

    @PostMapping(value = "queryAll",
            produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public String queryAll() {
        List<User> users = userService.selectAll();
        for (User user : users) {
            user.setId(null);
            user.setPassword(null);
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(MyResponse.ERROR_PROPERTY, MyResponse.SUCCESS);
        jsonObject.addProperty(MyResponse.MSG_PROPERTY, "查询所有用户成功");
        jsonObject.addProperty(MyResponse.BODY_PROPERTY, GsonUtil.getInstance().toJson(users));
        return jsonObject.toString();
    }

    @PostMapping(value = "modify",
            produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public String modify(
            @RequestParam String userJson,
            @RequestParam String userToModifyJson
    ) {
        User user = GsonUtil.getInstance().fromJson(userJson, User.class);
        User userToModify = GsonUtil.getInstance().fromJson(userToModifyJson, User.class);
        JsonObject jsonObject = new JsonObject();
        String msg;
        Integer error;

        User userLocal = userService.selectBySno(user.getSno());

        if (userLocal == null) {
            msg = "账号不存在";
            error = MyResponse.ERROR;
        } else {
            if (userLocal.getPassword().equals(user.getPassword())) {

                userLocal.setOpenId(userToModify.getOpenId());
                userLocal.setFormId(userToModify.getFormId());
                userLocal.setUserName(userToModify.getUserName());
                userLocal.setSex(userToModify.getSex());
                userLocal.setSno(userToModify.getSno());
                userLocal.setPassword(userToModify.getPassword());
                userLocal.setRootLevel(userToModify.getRootLevel());
                userLocal.setWhichGroup(userToModify.getWhichGroup());
                userLocal.setRegDate(userToModify.getRegDate());

                User user1 = userService.update(userLocal);
                jsonObject.addProperty(MyResponse.BODY_PROPERTY, user1.toString());
                msg = "修改成功";
                error = MyResponse.SUCCESS;
            } else {
                msg = "验证失败";
                error = MyResponse.FAILED;
            }
        }
        jsonObject.addProperty(MyResponse.ERROR_PROPERTY, error);
        jsonObject.addProperty(MyResponse.MSG_PROPERTY, msg);
        return jsonObject.toString();
    }

    @ResponseBody
    @PostMapping(value = "getUserOpenId", produces = MediaType.APPLICATION_JSON_VALUE)
    public String getUserOpenId(
            @RequestParam String code
    ) {
        JsonObject jsonObject = new JsonObject();
        int error;
        String msg;
        String userOpenId = pushService.getUserOpenId(code);
        if (userOpenId == null) {
            error = MyResponse.FAILED;
            msg = "获取失败，请检查code并重试";
        } else {
            error = MyResponse.SUCCESS;
            msg = "获取OpenId成功";
            jsonObject.addProperty(MyResponse.BODY_PROPERTY, userOpenId);
        }
        jsonObject.addProperty(MyResponse.ERROR_PROPERTY, error);
        jsonObject.addProperty(MyResponse.MSG_PROPERTY, msg);
        return jsonObject.toString();
    }

    @ResponseBody
    @PostMapping(value = "setUserOpenId", produces = MediaType.APPLICATION_JSON_VALUE)
    public String setUserOpenId(
            @RequestParam String sno,
            @RequestParam String password,
            @RequestParam String openId
    ) {
        JsonObject jsonObject = new JsonObject();
        int error;
        String msg;
        User user = userService.selectBySno(sno);
        if (user == null) {
            msg = "不存在该学号";
            error = MyResponse.FAILED;
        } else {
            if (user.getPassword().equals(password)) {
                user.setOpenId(openId);
                User update = userService.update(user);
                if (update != null) {
                    msg = "操作成功";
                    error = MyResponse.SUCCESS;
                } else {
                    msg = "操作失败";
                    error = MyResponse.ERROR;
                }
            } else {
                msg = "用户验证失败，请检查密码";
                error = MyResponse.FAILED;
            }
        }
        jsonObject.addProperty(MyResponse.ERROR_PROPERTY, error);
        jsonObject.addProperty(MyResponse.MSG_PROPERTY, msg);
        return jsonObject.toString();
    }
}
