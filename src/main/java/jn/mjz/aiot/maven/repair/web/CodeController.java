package jn.mjz.aiot.maven.repair.web;

import com.google.gson.JsonObject;
import jn.mjz.aiot.maven.repair.po.Code;
import jn.mjz.aiot.maven.repair.service.CodeService;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author 19622
 */
@Controller
@RequestMapping("code")
public class CodeController {

    private final CodeService codeService;

    public CodeController(CodeService codeService) {
        this.codeService = codeService;
    }

    @PostMapping(value = "insert",
            produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public String insert(
            @RequestParam Integer code
    ) {
        String msg;
        Integer error;
        JsonObject jsonObject = new JsonObject();
        //邀请码已存在
        if (codeService.query(code) != null) {
            msg = "邀请码已存在";
            error = MyResponse.FAILED;
        } else {
            Code insert = codeService.insert(code);
            if (insert != null) {
                msg = "添加成功";
                error = MyResponse.SUCCESS;
            } else {
                msg = "添加失败";
                error = MyResponse.ERROR;
            }
        }
        jsonObject.addProperty(MyResponse.MSG_PROPERTY, msg);
        jsonObject.addProperty(MyResponse.ERROR_PROPERTY, error);
        return jsonObject.toString();
    }
}
