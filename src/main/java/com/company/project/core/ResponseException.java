package com.company.project.core;

/**
 * @author gxy
 * @description 用于统一异常处理的时候进行
 * @create 2018-05-10 11:01
 **/
public class ResponseException extends RuntimeException {
	public ResponseException(String errorMsg) {
		super(errorMsg);
	}
}
