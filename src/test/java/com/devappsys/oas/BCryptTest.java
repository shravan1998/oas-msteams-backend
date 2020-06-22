package com.devappsys.oas;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class BCryptTest {

    public static void main(String[] args) {
        BCryptPasswordEncoder bpe = new BCryptPasswordEncoder();

        String encoded = bpe.encode("123456");
        if(bpe.matches("123456",encoded)){
            System.out.println("Encoded:"+encoded);
        }

    }
}
