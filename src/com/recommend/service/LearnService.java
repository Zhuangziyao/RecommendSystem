package com.recommend.service;


import java.util.Map;


public interface LearnService {

	public Map<String,Object> getCourseInfoById(String courseId);
	
	public String checkClass(String courseName,String userId);
	
	public String checkList(String courseName,String userId);
	
	public int insertClass(String courseName,String userId);
	
	public int insertList(String courseName,String userId);
	
	public int deleteClass(String courseName,String userId);
	
	public int deleteList(String courseName,String userId);
}
