package com.example.security;


import com.example.model.User;
import com.example.orm.DatabaseMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;


@Service
public class AuthenticationService implements UserDetailsService {

    @Autowired
    DatabaseMapper db;

    @Override
    public UserDetails loadUserByUsername(String loginId)
            throws UsernameNotFoundException {
        User user = db.findUserByLoginId(loginId);
        if(user == null){
            throw new UsernameNotFoundException("Could not find the user with loginId "+loginId);
        }
        return user;
    }
}
