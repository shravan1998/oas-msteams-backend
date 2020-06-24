package com.example.controller;


//import com.devappsys.oas.com.example.exception.DuplicateLoginException;
import com.example.model.*;
import com.example.orm.DatabaseMapper;
import com.example.util.PasswordEncoder;
import com.example.util.PasswordGenerator;
import com.example.exception.*;

import com.example.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@RestController
@CrossOrigin(maxAge = 3600, allowedHeaders = "*")
public class LoginController {
    @Autowired
    private DatabaseMapper db;

    @RequestMapping(method = RequestMethod.POST, value = "/login")
    @CrossOrigin(exposedHeaders = {"x-auth-token", "authorization"}) //allow client to access 'x-auth-token' after login
    public APIResponse login( HttpServletResponse response) { //authentication is already managed in spring security, check the role
        response.setHeader("Access-Control-Allow-Credentials", "true");
        User user = UserSession.getUser();

        List<Feature> featuresList = db.getFeaturesByUserRid(user.getUserRid());
        UserWrapper wrapper = new UserWrapper(user, featuresList);
        return APIResponse.send(wrapper);
    }

    @RequestMapping(method = RequestMethod.POST, value = "/silent-login")
    @CrossOrigin(exposedHeaders = {"x-auth-token"}) //allow client to access 'x-auth-token' after login
    public APIResponse silentLogin(@RequestParam(value = "deviceId") String deviceId, HttpServletRequest request)
            throws DuplicateLoginException { //authentication is already managed in spring security, this will hit only if auth is successful



        return APIResponse.success("Login Successful", db.findUserByLoginId(UserSession.getUser().getUsername()));
    }

    @RequestMapping("/logout")
    public APIResponse logout(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        SecurityContextHolder.clearContext();
        if (session != null) {
            session.invalidate();
        }
        return APIResponse.success();
    }

    @PostMapping("/first-login")
    @CrossOrigin(exposedHeaders = {"x-auth-token", "authorization"})
    public APIResponse firstLogin(@RequestBody User param) {

        User user = db.getUserDetail(param.getUserRid());

//        param.setNewPassword(PasswordEncoder.encode(param.getNewPassword()));   // generate new password hash

        if (user != null) {
            // compare old password
            // param.getPassword() = old plain password
            // user.getPassword() = old hashed password from database
            if (PasswordEncoder.isPasswordMatches(param.getPassword(), user.getPassword())) {
                // update new password and set first login flag to false
//                db.setFirstLoginToFalse(param.getNewPassword(), param.getUserRid());
                return APIResponse.success("Password updated successfully!");
            } else {
                return APIResponse.failed("Invalid old password!");
            }
        } else {
            return APIResponse.failed("Invalid user!");
        }
    }



    @PostMapping("/update-password")
    public APIResponse updatePassword(@RequestBody User param) {

        User user = db.findUserByLoginId(param.getUsername());

        if (user == null) {
            return APIResponse.failed("No details found for login Id: " + param.getUsername());
        }




        return APIResponse.failed("Wrong OTP entered, Please check the SMS again!");

    }

}

