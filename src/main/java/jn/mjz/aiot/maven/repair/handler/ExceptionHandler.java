package jn.mjz.aiot.maven.repair.handler;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.annotation.AnnotationUtils;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * @author 19622
 */
@ControllerAdvice
public class ExceptionHandler {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @org.springframework.web.bind.annotation.ExceptionHandler(Exception.class)
    public ModelAndView exceptionHandler(HttpServletRequest request, Exception e) throws Exception {

        //如果包含状态码就自动按照状态码展示对应的界面
        if (AnnotationUtils.findAnnotation(e.getClass(), ResponseStatus.class) != null) {
            throw e;
        }

        //记录异常，打印到控制台
        logger.error("Request URL : {}\nException : {}", request.getRequestURL(), e);
        //记录到文件里
        logger.error("Request URL : {}\nException : {}", request.getRequestURL(), e.getMessage());

        ModelAndView modelAndView = new ModelAndView();
        //请求的路径
        modelAndView.addObject("url", request.getRequestURL());
        //错误
        modelAndView.addObject("exception", e);
        //跳转到error下的error.html页面
        modelAndView.setViewName("error/error");
        return modelAndView;
    }
}
