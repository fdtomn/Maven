package com.lb.maven.web.user.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.lb.maven.web.user.dao.IUserDao;
import com.lb.maven.web.user.domain.User;


@Repository
public class UserDaoImpl implements IUserDao {
	
	@Resource
	private SqlSession sqlSession;

	@Override
	public List<User> getAllUser() {
		String s = User.class.getName()+".getAllUser";
		System.out.println(s);
		List<User> users = sqlSession.selectList(s);
		for(User u:users){
			System.out.println(u);
		}
		return users;
	}
	
	@Override
	public  void aa(){
		System.out.println("aaaaaaaaaa");
	}
	
	
}
