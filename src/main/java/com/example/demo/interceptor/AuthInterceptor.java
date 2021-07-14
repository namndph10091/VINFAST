package com.example.demo.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.example.demo.entity.Users;
import com.example.demo.service.SessionService;

@Component
public class AuthInterceptor implements HandlerInterceptor {
	@Autowired
	SessionService sessionService;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		Users user = sessionService.get("user");
		String error = "";
		if (user == null) {
			error = "Please login!";
			if (error.length() > 0) {
				response.sendRedirect("/login?error=" + error);
				return false;
			}
		}
		return true;
	}
}
