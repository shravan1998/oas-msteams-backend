package com.example.exception;

public class DuplicateLoginException extends Exception{
    public DuplicateLoginException(String message) {
        super(message);
    }
}
