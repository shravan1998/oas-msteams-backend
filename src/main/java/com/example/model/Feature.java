package com.example.model;

public class Feature {
    private int featureRid;
    private String featureCode;
    private String name;
    private String type;
    private int status;
    private int isAssigned;

    public int getFeatureRid() {
        return featureRid;
    }

    public void setFeatureRid(int featureRid) {
        this.featureRid = featureRid;
    }

    public String getFeatureCode() {
        return featureCode;
    }

    public void setFeatureCode(String featureCode) {
        this.featureCode = featureCode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getIsAssigned() {
        return isAssigned;
    }

    public void setIsAssigned(int isAssigned) {
        this.isAssigned = isAssigned;
    }
}
