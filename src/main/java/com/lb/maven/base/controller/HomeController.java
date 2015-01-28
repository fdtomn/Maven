package com.lb.maven.base.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {

	@RequestMapping({"/","/index","/home"})
	public String goHome(HttpServletRequest request,
			HttpServletResponse response){
		
		return "index";
	}
}
