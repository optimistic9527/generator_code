package com.company.project.core;

import com.company.project.util.LoggerUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.TypeMismatchException;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.http.converter.HttpMessageNotWritableException;
import org.springframework.web.HttpMediaTypeNotAcceptableException;
import org.springframework.web.HttpMediaTypeNotSupportedException;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.util.HashMap;


/**
 * @author gxy
 * @description 异常统一处理类
 * @create 2018-05-05 22:58
 **/
@RestControllerAdvice
public class ExceptionHandle {
	private final static Logger LOGGER = LoggerFactory.getLogger(ExceptionHandle.class);
	private static HashMap<Class, ResultCode> exceptionMap = new HashMap<>();
	//后期有什么新的异常记得添加进去
	static {
		exceptionMap.put(HttpMediaTypeNotAcceptableException.class, ResultCode.HTTP_MEDIA_TYPE_NOT_ACCEPTABLE);
		exceptionMap.put(HttpMessageNotReadableException.class,ResultCode.HTTP_MESSAGE_NOT_READABLE );
		exceptionMap.put(HttpMediaTypeNotSupportedException.class,ResultCode.HTTP_MEDIA_TYPE_NOT_SUPPORT);
		exceptionMap.put(MissingServletRequestParameterException.class, ResultCode.PARAM_NOT_COMPLETE);
		exceptionMap.put(HttpMessageNotWritableException.class, ResultCode.HTTP_MESSAGE_NOT_WRITABLE );
		exceptionMap.put(HttpRequestMethodNotSupportedException.class, ResultCode.HTTP_REQUEST_METHOD_NOT_SUPPORT);
		exceptionMap.put(TypeMismatchException.class, ResultCode.PARAM_TYPE_BIND_ERROR);
	}

	@ExceptionHandler({Exception.class})
	public String handleException(Exception e) {
		if (e instanceof ResponseException){
			//对于我们知道的异常打出trace用于后期查看
			LOGGER.trace(LoggerUtil.convertException2String(e));
			return ApiResponse.failure(e.getMessage());
		}
		ResultCode resultCode = exceptionMap.get(e.getClass());
		if(resultCode==null){
			LOGGER.error(LoggerUtil.convertException2String(e));
			resultCode=ResultCode.SYSTEM_UNKNOWN_ERROR;
		}
		return ApiResponse.failure(resultCode);
	}
}
