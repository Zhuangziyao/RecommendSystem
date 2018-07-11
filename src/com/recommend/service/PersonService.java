package com.recommend.service;

import java.util.List;
import java.util.Map;

import com.recommend.entity.Course;

public interface PersonService {
	
	public Map<String,Object> getClassAndList(String userid);
	
	public void quitClass(Map<String,String> map);
	
	public void quitList(Map<String,String> map);
	
	public List<Course> getClass(String userid);
	
	public List<Course> getList(String userid);
}
