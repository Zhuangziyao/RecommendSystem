package com.recommend.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public String checkUserById(String id) {
		String userid="";
		try {
			userid=sqlSessionTemplate.selectOne("com.recommend.mapper.UserMapper.checkUserIsExist",id);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return userid;
	}
	
	public int registerUser(Map<String,Object> account) {
		int result=sqlSessionTemplate.insert("com.recommend.mapper.UserMapper.insertUser",account);
		return result;
	}
	
	public String getUserByIdAndPwd(Map user) {
		String userid="";
		try {
			userid=sqlSessionTemplate.selectOne("com.recommend.mapper.UserMapper.getUserByIdAndPwd",user);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return userid;
	}
	
	public int setInfo(Map<String,String> info) {
		int rows=sqlSessionTemplate.insert("com.recommend.mapper.UserMapper.setInfo",info);
		return rows;
	}
	
	public int getAutoId(String userid) {
		int autoid=sqlSessionTemplate.selectOne("com.recommend.mapper.UserMapper.getAutoIdByUserId",userid);
		return autoid;
	}
}
