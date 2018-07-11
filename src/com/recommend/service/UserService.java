package com.recommend.service;

import java.util.Map;

public interface UserService {
	public String checkUserById(String id);
	
	public int registerUser(Map<String,Object> account);
	
	public String getUserByIdAndPwd(Map user);
	
	public int setInfo(Map<String,String> info);
}
