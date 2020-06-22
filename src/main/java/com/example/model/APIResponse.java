package com.example.model;

public class APIResponse {
    private int status;
    private int recordCount = -1;
    private String description;

    //@JsonInclude(JsonInclude.Include.NON_NULL)
    private Object data;

    private static final int SUCCESS = 0;
    private static final int FAILED = -1;
    private static final int NO_RECORDS = -2;

    public APIResponse(int status, String description){
        this.status = status;
        this.description = description;
    }

    public APIResponse(int status, String description, Object data){
        this.status = status;
        this.description = description;
        this.data = data;
    }

    public APIResponse(int status, String description, Object data,int recordCount){
        this.status = status;
        this.description = description;
        this.data = data;
        this.recordCount = recordCount;
    }

    public int getStatus() {
        return status;
    }

    public String getDescription() {
        return description;
    }

    public static APIResponse success(){
        return new APIResponse(SUCCESS, "Completed Successfully",null);
    }

    public static APIResponse failed(){
        return new APIResponse(FAILED, "Could not process the request",null);
    }


    public static APIResponse success(String message,Object data){
        return new APIResponse(SUCCESS, message,data);
    }

    public static APIResponse success(String message,Object data,int recordCount){
        return new APIResponse(SUCCESS, message,data,recordCount);
    }

    public static APIResponse success(String message){
        return new APIResponse(SUCCESS, message,null);
    }

    public static APIResponse send(Object data,int recordCount){
        return new APIResponse(SUCCESS, "",data,recordCount);
    }

    public static APIResponse send(Object data){
        return new APIResponse(SUCCESS, "",data);
    }

    public static APIResponse failed(String message){
        return new APIResponse(FAILED, message,null);
    }

    public static APIResponse failed(int status, String message){
        return new APIResponse(status, message,null);
    }

    public static APIResponse norecords(){
        return new APIResponse(NO_RECORDS, "No Records Found!",null);
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public int getRecordCount() {
        return recordCount;
    }
}
