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
	public String toLogin(HttpServletRequest request){
		//如果用户已登陆则无需再次登录,可直接跳转到首页
		if( getUserInfo(request) != null ){
			return "redirect:/";
		}
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
		
		//验证用户信息
		if(userInfo != null){
			request.getSession().setAttribute("userInfo", userInfo);
			String uri = (String)request.getSession().getAttribute("uri");
			if(uri == null){
				return "redirect:/";
			}else{
				return "redirect:"+uri;
			}
		}
		return "login";
	}
	
	/**
	 * 从Session中获取用户信息
	 * @param request
	 * @return
	 */
	public static UserInfo getUserInfo(HttpServletRequest request){
		return (UserInfo)request.getSession().getAttribute("userInfo");
	}
	
	/**
	 * 用户注销操作
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request){
		//点击注销后将用户的session移除
		request.getSession().removeAttribute("userInfo");
		return "redirect:login";
	}
	
}
