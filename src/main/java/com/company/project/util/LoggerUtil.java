package com.company.project.util;

import java.io.PrintWriter;
import java.io.StringWriter;

/**
 * 用于异常堆栈信息收集，可以轻松追溯
 */
public final class LoggerUtil {
	public static String convertException2String(Throwable e) {
		StringWriter sw = new StringWriter();
		PrintWriter pw = new PrintWriter(sw);
		e.printStackTrace(pw);
		return sw.toString();
	}
}
