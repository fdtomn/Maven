package com.lb.maven.base.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lb.maven.base.domain.UserInfo;

@Controller
@RequestMapping("/account")
public class LoginController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String toLogin(){
		return "login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(HttpServletRequest request,UserInfo userInfo){
		request.setAttribute("userInfo", userInfo);
		return "home";
	}
	
}
