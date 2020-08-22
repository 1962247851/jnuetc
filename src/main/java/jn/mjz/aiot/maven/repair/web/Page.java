package jn.mjz.aiot.maven.repair.web;

import jn.mjz.aiot.maven.repair.service.StateService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author 19622
 */
@Controller
public class Page {

//    //        @GetMapping("/{id}/{name}")
//    @GetMapping("/")
////    public String index(@PathVariable("id") Integer id, @PathVariable("name") String name) {
//    public String repair() {
////        int i = 1 / 0;
////        String blog = null;
////        if (blog == null) {
////            throw new NotFindException("博客不存在");
////        }
//        System.out.println("repair");
//        return "index";
//    }

    private final StateService stateService;

    public Page(StateService stateService) {
        this.stateService = stateService;
    }

    @GetMapping("/")
    public String app() {
        if (stateService.checkService("repair")) {
            return "index";
        } else {
//            return "redirect:notice";
            return "redirect:notice";
        }
    }

    @GetMapping("index")
    public String index() {
        if (stateService.checkService("repair")) {
            return "index";
        } else {
//            return "redirect:notice";
            return "redirect:notice";
        }
    }

    @GetMapping("notice")
    public String notice() {
        if (stateService.checkService("repair")) {
            return "redirect:index";
        } else {
            return "notice";
        }
    }

    @GetMapping("register")
    public String register() {
        if (stateService.checkService("register")) {
            return "register";
        } else {
            return "redirect:index";
        }
    }
}
