package com.example.util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordEncoder {
    public static String encode(String plain) {
        return new BCryptPasswordEncoder().encode(plain);
    }

    public static boolean isPasswordMatches(String plainPassword, String encodedPassword) {
        return new BCryptPasswordEncoder().matches(plainPassword, encodedPassword);
    }
}
