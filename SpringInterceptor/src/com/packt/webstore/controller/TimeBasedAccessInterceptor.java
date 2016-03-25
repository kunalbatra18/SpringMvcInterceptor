package com.packt.webstore.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class TimeBasedAccessInterceptor extends HandlerInterceptorAdapter {


	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		 String url_name   = request.getRequestURL().toString() + "?" + request.getQueryString();
				 System.out.println(url_name);
		System.out.println(" ininterceptor ");
			return true;
	
	}
}