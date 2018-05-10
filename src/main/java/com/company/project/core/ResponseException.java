package com.company.project.core;

/**
 * @author gxy
 * @description
 * @create 2018-05-10 11:01
 **/
public class ResponseException extends RuntimeException {
	public ResponseException(String errorMsg) {
		super(errorMsg);
	}
}
