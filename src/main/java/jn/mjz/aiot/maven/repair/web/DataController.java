package jn.mjz.aiot.maven.repair.web;

import ch.qos.logback.core.util.ExecutorServiceUtil;
import com.google.gson.JsonObject;
import jn.mjz.aiot.maven.repair.po.Data;
import jn.mjz.aiot.maven.repair.po.User;
import jn.mjz.aiot.maven.repair.service.DataService;
import jn.mjz.aiot.maven.repair.service.FileService;
import jn.mjz.aiot.maven.repair.service.UserService;
import jn.mjz.aiot.maven.repair.util.GsonUtil;
import jn.mjz.aiot.maven.repair.util.PushService;
import org.json.simple.parser.ParseException;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 19622
 */
@Controller
@RequestMapping("data")
public class DataController {

    private static final String DATA_PHOTO_PATH = "/opt/dataDP/";

    private final FileService fileService;
    private final DataService dataService;
    private final UserService userService;
    private final PushService pushService;

    public DataController(FileService fileService, DataService dataService, UserService userService, PushService pushService) {
        this.fileService = fileService;
        this.dataService = dataService;
        this.userService = userService;
        this.pushService = pushService;
    }

    @CrossOrigin(origins = "*")
    @PostMapping(value = "insert",
            produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public String insert(
            HttpServletRequest request) {
        JsonObject jsonObject = new JsonObject();
        int error;
        String msg;
        String name = request.getParameter("name");
        String college = request.getParameter("college");
        String grade = request.getParameter("grade");
        String tel = request.getParameter("tel");
        String qq = request.getParameter("qq");
        String local = request.getParameter("local");
        String model = request.getParameter("model");
        String message = request.getParameter("message");
        if (name == null || college == null || grade == null || tel == null || qq == null || local == null || model == null || message == null) {
            msg = "字段不能有空";
            jsonObject.addProperty(MyResponse.ERROR_PROPERTY, MyResponse.FAILED);
        } else {
            Data data = new Data();
            //转换成MultipartHttpServletRequest
            MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
            //拿到图片List
            List<MultipartFile> fileList = multipartRequest.getFiles("photo");
            System.out.println("图片个数" + fileList.size());
            if (!fileList.isEmpty()) {
                //保存图片后缀
                List<String> arrayList = new ArrayList<>();
                //上传到服务器
                for (int i = 0; i < fileList.size(); i++) {
                    MultipartFile multipartFile = fileList.get(i);
                    String originalFilename = multipartFile.getOriginalFilename();
                    if (originalFilename != null) {
                        String filePrefix = "";
                        String fileName = data.getUuid();
                        String fileSuffix = originalFilename.substring(originalFilename.lastIndexOf(".") + 1);
                        arrayList.add("_" + (i + 1) + "." + fileSuffix);
                        fileService.uploadOneFile(DATA_PHOTO_PATH,
                                filePrefix,
                                fileName,
                                arrayList.get(i),
                                multipartFile
                        );
                    }
                }
                data.setPhoto(GsonUtil.getInstance().toJson(arrayList));
            }
            data.setState(0);
            data.setName(name);
            data.setCollege(college);
            data.setGrade(grade);
            data.setTel(tel);
            data.setQq(qq);
            data.setLocal(local);
            data.setDistrict("杏桃桔桂梅榴李竹".indexOf(local.charAt(0)) != -1 ? 0 : 1);
            data.setModel(model);
            data.setMessage(message);
            Data insert = dataService.insert(data);
            if (insert != null) {
                msg = "成功";
                error = MyResponse.SUCCESS;
                jsonObject.addProperty(MyResponse.BODY_PROPERTY, insert.toString());
                sendMessage(insert, null, null);
            } else {
                msg = "失败";
                error = MyResponse.FAILED;
            }
            jsonObject.addProperty(MyResponse.ERROR_PROPERTY, error);
        }
        jsonObject.addProperty(MyResponse.MSG_PROPERTY, msg);
        return jsonObject.toString();
    }

    @PostMapping(value = "queryAll", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public String queryAll() {
        List<Data> dataList = dataService.queryAll();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(MyResponse.ERROR_PROPERTY, MyResponse.SUCCESS);
        jsonObject.addProperty(MyResponse.MSG_PROPERTY, "获取所有报修单成功");
        jsonObject.addProperty(MyResponse.BODY_PROPERTY, GsonUtil.getInstance().toJson(dataList));
        return jsonObject.toString();
    }

    @PostMapping("queryById")
    @ResponseBody
    public String queryById(
            @RequestParam("id") Long id
    ) {
        JsonObject jsonObject = new JsonObject();
        String msg;
        Data data = dataService.queryById(id);
        if (data == null) {
            jsonObject.addProperty(MyResponse.ERROR_PROPERTY, MyResponse.FAILED);
            msg = "报修单不存在";

        } else {
            jsonObject.addProperty(MyResponse.ERROR_PROPERTY, MyResponse.SUCCESS);
            msg = "查询成功";
            jsonObject.addProperty(MyResponse.BODY_PROPERTY, data.toString());
        }
        jsonObject.addProperty(MyResponse.MSG_PROPERTY, msg);
        return jsonObject.toString();
    }


    @PostMapping(value = "deleteByIdList", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public String deleteByIdList(
            @RequestParam("idListJson") String idListJson,
            @RequestParam("userJson") String userJson
    ) {
        JsonObject jsonObject = new JsonObject();
        String msg;
        Integer error;
        User user;
        List<Long> idList;
        try {
            idList = GsonUtil.parseJsonArray2ObjectList(idListJson, Long.class);
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
                    if (selectBySno.getRootLevel() != 0 && selectBySno.getRootLevel() != 1) {
                        List<Data> dataList = dataService.queryByIdList(idList);
                        dataService.deleteByIdList(idList);
                        msg = "删除成功";
                        error = MyResponse.SUCCESS;
                        jsonObject.addProperty(MyResponse.BODY_PROPERTY, GsonUtil.getInstance().toJson(dataList));
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

    @PostMapping(value = "update", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public String update(
            @RequestParam("dataJson") String dataJson,
            @RequestParam("oldDataJson") String oldDataJson,
            @RequestParam("name") String name
    ) {
        Data data = GsonUtil.getInstance().fromJson(dataJson, Data.class);
        JsonObject jsonObject = new JsonObject();
        String msg;
        if (data != null) {
            Data modify = dataService.modify(data);
            msg = "修改成功";
            sendMessage(modify, GsonUtil.getInstance().fromJson(oldDataJson, Data.class), name);
            jsonObject.addProperty(MyResponse.ERROR_PROPERTY, MyResponse.SUCCESS);
            jsonObject.addProperty(MyResponse.BODY_PROPERTY, modify.toString());
        } else {
            jsonObject.addProperty(MyResponse.ERROR_PROPERTY, MyResponse.FAILED);
            msg = "报修单数据有误";
        }
        jsonObject.addProperty(MyResponse.MSG_PROPERTY, msg);
        return jsonObject.toString();
    }

    /**
     * 下发新报修单或者报修单更新
     *
     * @param data    报修单
     * @param oldData 未修改的报修单
     * @param name    执行该操作的用户
     */
    private void sendMessage(Data data, Data oldData, String name) {
        ExecutorServiceUtil.newExecutorService().execute(() -> {
            try {
                pushService.sendDataMiBroadcast(data, oldData, name);
                if (name == null) {
                    List<User> users = userService.selectAll();
                    for (User user : users) {
                        String openId = user.getOpenId();
                        if (openId != null) {
                            pushService.sendWeiXinSubscribeMessage(data, openId);
                        }
                    }
                }
            } catch (IOException | ParseException e) {
                e.printStackTrace();
            }
        });
    }

}
