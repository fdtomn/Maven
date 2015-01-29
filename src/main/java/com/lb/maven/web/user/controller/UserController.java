package com.lb.maven.web.user.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lb.maven.web.user.service.IUserService;


@Controller
@RequestMapping("/user")
public class UserController {

	static Logger logger = Logger.getLogger(UserController.class);
	
	@Resource
	private IUserService userServiceImpl;
	
	@RequestMapping("/users")
	public String getAllUser(){
		logger.info("list all user");
		userServiceImpl.getAllUser();
		return "user/user_list";
	}
}
