package com.quantang.web.article;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.commons.CommonsMultipartResolver;

public class MyMultipartResolver extends CommonsMultipartResolver {
	public boolean isMultipart(HttpServletRequest request) {
		if (request.getRequestURI().equals("/file_upload.htm")) {
//		if (request.getRequestURI().equals("/quantang/file_upload.htm")) {
			return false;
		} else {
			return super.isMultipart(request);
		}
	}
}
