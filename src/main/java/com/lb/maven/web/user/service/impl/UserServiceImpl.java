package com.lb.maven.web.user.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lb.maven.web.user.dao.IUserDao;
import com.lb.maven.web.user.domain.User;
import com.lb.maven.web.user.service.IUserService;

@Service
public class UserServiceImpl implements IUserService {

	@Resource
	private IUserDao userDaoImpl;
	
	@Override
	public List<User> getAllUser() {
		return userDaoImpl.getAllUser();
	}


}
