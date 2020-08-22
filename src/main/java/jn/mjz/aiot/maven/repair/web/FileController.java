package jn.mjz.aiot.maven.repair.web;

import com.google.gson.JsonObject;
import jn.mjz.aiot.maven.repair.service.FileService;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * @author 19622
 */
@Controller
@RequestMapping("file")
public class FileController {

    private final FileService fileService;

    public FileController(FileService fileService) {
        this.fileService = fileService;
    }

    @GetMapping(value = "download", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
    public ResponseEntity<InputStreamResource> download(
            @RequestParam String path,
            @RequestParam String fileName
    ) throws IOException {
        String filePath = path + fileName;
        FileSystemResource file = new FileSystemResource(filePath);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Cache-Control", "no-cache, no-store, must-revalidate");
        headers.add("Content-Disposition", String.format("attachment; filename=\"%s\"", file.getFilename()));
        headers.add("Pragma", "no-cache");
        headers.add("Expires", "0");
        return ResponseEntity
                .ok()
                .headers(headers)
                .contentLength(file.contentLength())
                .contentType(MediaType.parseMediaType("application/octet-stream"))
                .body(new InputStreamResource(file.getInputStream()));
    }

    @PostMapping(value = "upload", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public String upload(
            HttpServletRequest request,
            @RequestParam("path") String path,
            @RequestParam("fileName") String fileName
    ) {
        JsonObject jsonObject = new JsonObject();
        //转换成MultipartHttpServletRequest
        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
        //拿到图片List
        MultipartFile multipartFile = multipartRequest.getFile("file");
        if (multipartFile != null) {
            fileService.uploadOneFile(path, "", fileName, "", multipartFile);
        }
        jsonObject.addProperty(MyResponse.ERROR_PROPERTY, MyResponse.SUCCESS);
        jsonObject.addProperty(MyResponse.MSG_PROPERTY, "上传成功");
        return jsonObject.toString();
    }
}
