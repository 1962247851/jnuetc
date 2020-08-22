package jn.mjz.aiot.maven.repair.service;

import org.springframework.web.multipart.MultipartFile;

/**
 * @author 19622
 */
public interface FileService {

    /**
     * 上传到指定路径
     *
     * @param path          路径
     * @param filePrefix    前缀
     * @param fileName      文件名
     * @param fileSuffix    后缀
     * @param multipartFile 文件
     */
    void uploadOneFile(String path, String filePrefix, String fileName, String fileSuffix, MultipartFile multipartFile);

}
