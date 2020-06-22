package com.example.model;

public class DataDictionary {
    public static final int DD_TYPE_COMPONENT = 1;
    public static final int DD_TYPE_EFFORT_TYPE = 2;

    private int ddIndex;
    private String ddValue;
    private int ddParentIndex;
    private int ddOrder;
    private String ddCode;
    private String ddDescription;
    private int ddType;
    private int ddStatus;

    public int getDdIndex() {
        return ddIndex;
    }

    public void setDdIndex(int ddIndex) {
        this.ddIndex = ddIndex;
    }

    public String getDdValue() {
        return ddValue;
    }

    public void setDdValue(String ddValue) {
        this.ddValue = ddValue;
    }

    public int getDdParentIndex() {
        return ddParentIndex;
    }

    public void setDdParentIndex(int ddParentIndex) {
        this.ddParentIndex = ddParentIndex;
    }

    public int getDdOrder() {
        return ddOrder;
    }

    public void setDdOrder(int ddOrder) {
        this.ddOrder = ddOrder;
    }

    public String getDdCode() {
        return ddCode;
    }

    public void setDdCode(String ddCode) {
        this.ddCode = ddCode;
    }

    public String getDdDescription() {
        return ddDescription;
    }

    public void setDdDescription(String ddDescription) {
        this.ddDescription = ddDescription;
    }

    public int getDdType() {
        return ddType;
    }

    public void setDdType(int ddType) {
        this.ddType = ddType;
    }

    public int getDdStatus() {
        return ddStatus;
    }

    public void setDdStatus(int ddStatus) {
        this.ddStatus = ddStatus;
    }
}
