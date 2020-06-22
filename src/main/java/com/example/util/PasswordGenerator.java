package com.example.util;

import java.util.Random;

public class PasswordGenerator {
    private static final char[] PASSWORD_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
    private static final int PASSWORD_LENGTH = 5;

    public static String getNewPassword() {
        Random rnd = new Random();
        StringBuilder sb = new StringBuilder();

        for (int i = 0; i < PASSWORD_LENGTH; i++) {
            sb.append(PASSWORD_CHARS[rnd.nextInt(PASSWORD_CHARS.length)]);
        }
        return sb.toString();
    }
}
