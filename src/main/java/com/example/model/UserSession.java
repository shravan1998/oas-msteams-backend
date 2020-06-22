package com.example.model;

import org.springframework.security.core.context.SecurityContextHolder;

public class UserSession {
    public static User getUser(){
        return (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    }

    public static int getUserRid(){
        return ((User) SecurityContextHolder.getContext().getAuthentication().getPrincipal()).getUserRid();
    }
}
