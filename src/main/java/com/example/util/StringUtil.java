package com.example.util;

public class StringUtil {
    public static boolean isEmpty(String str) {
        return str == null || str.trim().equals("");
    }

    public static boolean isNotEmpty(String str) {
        return !isEmpty(str);
    }

    public static String maskContactNumber(String contactNumber) {

        if (isEmpty(contactNumber)) return null;

        // 9876543210 ===> ******3210
        contactNumber = contactNumber.replaceAll("\\d(?=(?:\\D*\\d){4})", "*");

        return contactNumber;
    }

    public static int length(String str) {
        if (isEmpty(str)) {
            return 0;
        }

        return str.length();
    }

    public static String substring(String str, int start, int end) {
        if (isEmpty(str)) {
            return str;
        }

        return str.substring(start, end);
    }

    public static String removeWhiteSpaces(String str) {
        if (isEmpty(str)) {
            return str;
        }

        return str.replaceAll("\\s", "");
    }

    public static String trim(String str) {
        if (isEmpty(str)) {
            return str;
        }

        return str.trim();
    }

    public static String toUpperCase(String str) {
        if (isEmpty(str)) {
            return str;
        }

        return str.toUpperCase();
    }

    public static String toLowerCase(String str) {
        if (isEmpty(str)) {
            return str;
        }

        return str.toLowerCase();
    }

}
