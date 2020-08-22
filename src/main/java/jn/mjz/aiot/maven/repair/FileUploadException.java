package jn.mjz.aiot.maven.repair;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * @author 19622
 */
@ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
public class FileUploadException extends RuntimeException {

    public FileUploadException() {

    }

    public FileUploadException(String message) {
        super(message);
    }

    public FileUploadException(String message, Throwable cause) {
        super(message, cause);
    }
}
