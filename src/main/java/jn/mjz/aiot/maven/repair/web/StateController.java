package jn.mjz.aiot.maven.repair.web;


import com.google.gson.JsonObject;
import jn.mjz.aiot.maven.repair.po.State;
import jn.mjz.aiot.maven.repair.service.StateService;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * @author 19622
 */
@Controller
@RequestMapping("state")
public class StateController {

    private final StateService stateService;

    public StateController(StateService stateService) {
        this.stateService = stateService;
    }

    @CrossOrigin(origins = "*")
    @PostMapping(value = "checkService", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public String checkService(
            @RequestParam("type") String type
    ) {
        Boolean available = stateService.checkService(type);
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(MyResponse.ERROR_PROPERTY, MyResponse.SUCCESS);
        jsonObject.addProperty(MyResponse.MSG_PROPERTY, "查询成功");
        jsonObject.addProperty(MyResponse.BODY_PROPERTY, available);
        return jsonObject.toString();
    }

    @PostMapping(value = "changeService", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public String changeService(
            @RequestParam("type") String type,
            @RequestParam("available") Boolean available
    ) {
        JsonObject jsonObject = new JsonObject();
        State state = stateService.changeState(type, available);
        jsonObject.addProperty(MyResponse.ERROR_PROPERTY, MyResponse.SUCCESS);
        jsonObject.addProperty(MyResponse.MSG_PROPERTY, "操作成功");
        jsonObject.addProperty(MyResponse.BODY_PROPERTY, state.getAvailable());
        return jsonObject.toString();
    }
}
