package com.example.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class User implements UserDetails {
    String ROLE_PREFIX = "ROLE_"; //1-admin, 2-user

    private int userRid;
    private int empRid;
    private String fullName;
    private String emailId;
    private String pwd;
    private String mobileNo;
    private int status;
    private int isFirstLogin;
    private String roleRids;
//    private int createdDatetime;

    public User() {
    }

    public User(String fullName, String emailId, String mobileNo) {
        this.fullName = fullName;
        this.emailId = emailId;
        this.mobileNo = mobileNo;
    }

    public int getUserRid() {
        return userRid;
    }

    public void setUserRid(int userRid) {
        this.userRid = userRid;
    }

    public int getEmpRid() {
        return empRid;
    }

    public void setEmpRid(int empRid) {
        this.empRid = empRid;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPwd() {
        return pwd;
    }

    @JsonIgnore
    @JsonProperty(value = "user_password")
    public String getPassword() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    public String getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getIsFirstLogin() {
        return isFirstLogin;
    }

    public void setIsFirstLogin(int isFirstLogin) {
        this.isFirstLogin = isFirstLogin;
    }

//    public int getCreatedDatetime() {
//        return createdDatetime;
//    }
//
//    public void setCreatedDatetime(int createdDatetime) {
//        this.createdDatetime = createdDatetime;
//    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<GrantedAuthority> list = new ArrayList<GrantedAuthority>();

        if(roleRids != null){
            String roles[] = roleRids.split(",");
            for(String role:roles){
                list.add(new SimpleGrantedAuthority(ROLE_PREFIX + role));
            }
        }else{
            list.add(new SimpleGrantedAuthority(""));
        }

        return list;
    }

    @Override
    public String getUsername() {
        return fullName;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return status == 1;
    }

    public String getRoleRids() {
        return roleRids;
    }

    public void setRoleRids(String roleRids) {
        this.roleRids = roleRids;
    }
}
