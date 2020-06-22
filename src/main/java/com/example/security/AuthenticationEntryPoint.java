package com.example.security;

import org.springframework.http.HttpStatus;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.www.BasicAuthenticationEntryPoint;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;



@Component
public class AuthenticationEntryPoint extends BasicAuthenticationEntryPoint {

    @Override
    public void commence(HttpServletRequest request, HttpServletResponse response, AuthenticationException authEx)
            throws IOException {
            //response.addHeader("WWW-Authenticate", "Basic realm=" +getRealmName());
            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            response.setContentType("application/json");
            String content = "{\"status\":"+ HttpStatus.UNAUTHORIZED.value()+",\"description\":"+"\"HTTP Status 401 - " + authEx.getMessage()+"\"}";
            PrintWriter writer = response.getWriter();
            //writer.println("HTTP Status 401 - " + authEx.getMessage());
            writer.println(content);

    }

    @Override
    public void afterPropertiesSet()  {
        setRealmName("ALOKA");
        super.afterPropertiesSet();
    }
}
