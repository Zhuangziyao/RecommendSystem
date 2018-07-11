package com.recommend.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recommend.dao.UserDao;
import com.recommend.service.UserService;
@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;
	public String checkUserById(String id) {
		String userid=userDao.checkUserById(id);
		return userid;
	}
	
	public int registerUser(Map<String,Object> account) {
		int result=userDao.registerUser(account);
		return result;
	}
	
	public String getUserByIdAndPwd(Map user) {
		String userid=userDao.getUserByIdAndPwd(user);
		return userid;
	}
	
	public int setInfo(Map<String,String> info) {
		int result=userDao.setInfo(info);
		return result;
	}
}
