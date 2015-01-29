package com.lb.maven.base.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lb.maven.base.domain.UserInfo;

@Controller
@RequestMapping("/account")
public class LoginController {

	static Logger logger = Logger.getLogger(LoginController.class);
	
	/**
	 * 跳转到登陆页面
	 * @return
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String toLogin(){
		logger.info("跳转到登陆.......");
		return "login";
	}
	
	/**
	 * 登录操作
	 * @param request
	 * @param userInfo
	 * @return
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(HttpServletRequest request,UserInfo userInfo){
		request.setAttribute("userInfo", userInfo);
		return "index";
	}
	
	/**
	 * 从Session中获取用户信息
	 * @param request
	 * @return
	 */
	public static UserInfo getUserInfo(HttpServletRequest request){
		return (UserInfo)request.getSession().getAttribute("userInfo");
	}
}
