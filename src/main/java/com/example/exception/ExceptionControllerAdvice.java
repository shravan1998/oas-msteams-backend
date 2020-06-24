package com.example.exception;

import com.example.model.APIResponse;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ExceptionControllerAdvice {

    @ExceptionHandler(DuplicateLoginException.class)
    public ResponseEntity<APIResponse> handleDuplicateLogin(Throwable ex) {
        APIResponse resp = APIResponse.failed(HttpStatus.FORBIDDEN.value(),ex.getMessage());
        return new ResponseEntity<>(resp, HttpStatus.FORBIDDEN);
    }

    @ExceptionHandler(Throwable.class)
    public ResponseEntity<APIResponse> exceptionHandler(Throwable ex) {
        APIResponse resp = APIResponse.failed(HttpStatus.INTERNAL_SERVER_ERROR.value(),ex.getMessage());

        return new ResponseEntity<>(resp, HttpStatus.INTERNAL_SERVER_ERROR);
    }


}
