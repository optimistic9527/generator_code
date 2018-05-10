package com.company.project.core;

import com.alibaba.fastjson.JSONObject;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;

/**
 * @author gxy
 * @description
 * @create 2018-05-02 16:50
 **/
@ApiModel(value = "ResultCode", description = "返回对象")
public class ApiResponse implements Serializable {
	private static final long serialVersionUID = -3948389268046368059L;
	@ApiModelProperty("返回编号")
	private Integer code;
	@ApiModelProperty("返回信息")
	private String msg;
	@ApiModelProperty("返回内容")
	private Object data;

	public ApiResponse() {
	}

	public ApiResponse(Integer code, String msg, Object data) {
		this.code = code;
		this.msg = msg;
		this.data = data;
	}

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}

	public ApiResponse(Integer code, String msg) {
		this.code = code;
		this.msg = msg;
	}

	public static String success() {
		ApiResponse result = new ApiResponse();
		result.setResultCode(ResultCode.SUCCESS);
		return result.toString();
	}

	public static String success(Object data) {
		ApiResponse result = new ApiResponse();
		result.setResultCode(ResultCode.SUCCESS);
		result.setData(data);
		return result.toString();
	}

	public static String failure(ResultCode resultCode) {
		ApiResponse result = new ApiResponse();
		result.setResultCode(resultCode);
		return result.toString();
	}

	public static String failure(String msg) {
		ApiResponse result = new ApiResponse();
		result.setCode(-1);
		result.setMsg(msg);
		return result.toString();
	}

	public static String failure(ResultCode resultCode, Object data) {
		ApiResponse result = new ApiResponse();
		result.setResultCode(resultCode);
		result.setData(data);
		return result.toString();
	}

	public void setResultCode(ResultCode code) {
		this.code = code.code();
		this.msg = code.message();
	}

	@Override
	public String toString() {
		return JSONObject.toJSONString(this);
	}
}
