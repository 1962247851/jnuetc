package jn.mjz.aiot.maven.repair;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * @author 19622
 */
@ResponseStatus(HttpStatus.NOT_FOUND)
public class NotFindException extends RuntimeException {

    public NotFindException() {

    }

    public NotFindException(String message) {
        super(message);
    }

    public NotFindException(String message, Throwable cause) {
        super(message, cause);
    }
}
