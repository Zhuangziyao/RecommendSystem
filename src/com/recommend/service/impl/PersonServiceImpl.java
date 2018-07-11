package com.recommend.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.recommend.dao.PersonDao;
import com.recommend.entity.Course;
import com.recommend.service.PersonService;

public class PersonServiceImpl implements PersonService{
	@Autowired
	private PersonDao personDao;
	
	public Map<String,Object> getClassAndList(String userid){
		List<Course> classInfo=personDao.getClass(userid);
		List<Course> listInfo=personDao.getList(userid);
		Map<String,Object> map=new HashMap<>();
		map.put("classInfo", classInfo);
		map.put("listInfo", listInfo);
		return map;
	}
	
	public List<Course> getClass(String userid){
		List<Course> classInfo=personDao.getClass(userid);
		return classInfo;
	}
	
	public List<Course> getList(String userid){
		List<Course> listInfo=personDao.getList(userid);
		return listInfo;
	}
	
	public void quitClass(Map<String,String> map) {
		personDao.quitClass(map);
	}
	
	public void quitList(Map<String,String> map) {
		personDao.quitList(map);
	}
}
