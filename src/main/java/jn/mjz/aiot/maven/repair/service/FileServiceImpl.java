package jn.mjz.aiot.maven.repair.service;

import jn.mjz.aiot.maven.repair.FileUploadException;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

/**
 * @author 19622
 */
@Service
public class FileServiceImpl implements FileService {

    private File createFile(String pathName) {
        File file = new File(pathName);
        if (!file.getParentFile().exists()) {
            if (!file.getParentFile().mkdirs()) {
                throw new FileUploadException("创建文件失败");
            }
        }
        if (!file.exists()) {
            try {
                if (file.createNewFile()) {
                    return file;
                }
            } catch (IOException e) {
                e.printStackTrace();
                throw new FileUploadException("创建文件失败");
            }
        }
        return file;
    }

    private void writeToFile(String pathName, MultipartFile multipartFile) {
        File file;
        try {
            file = createFile(pathName);
        } catch (Exception e) {
            throw new FileUploadException("创建文件失败");
        }
        try {
            multipartFile.transferTo(file);
        } catch (IOException e) {
            throw new FileUploadException("系统找不到指定的路径");
        }
    }

    @Override
    public void uploadOneFile(String path, String filePrefix, String fileName, String fileSuffix, MultipartFile multipartFile) {
        // 文件路径
        String pathName = path + filePrefix + fileName + fileSuffix;
        System.out.println("uploadOneFile\n" + pathName);
        // 创建文件夹和文件，写入文件
        writeToFile(pathName, multipartFile);
    }

}
