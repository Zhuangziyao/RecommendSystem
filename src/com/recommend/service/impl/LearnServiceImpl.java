package com.recommend.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.recommend.dao.LearnDao;
import com.recommend.entity.Course;
import com.recommend.service.LearnService;

public class LearnServiceImpl implements LearnService{
	@Autowired
	private LearnDao learnDao;
	
	public Map<String,Object> getCourseInfoById(String courseId){
		Course course=learnDao.getCourseInfoById(courseId);
		Map<String,Object> map=new HashMap<>();
		map.put("courseName", course.getCourseName());
		map.put("courseImg", course.getCourseImg());
		map.put("Introduction", course.getIntroduction());
		map.put("Teacher", course.getCourseTeacher());
		map.put("courseTime", Integer.toString(course.getCourseTime()));
		map.put("learnedNumber", Integer.toString(course.getLearnedNumber()));
		String[] allTag=course.getCourseTag().split(" ");
		List<String> tags=new ArrayList<>();
		for(String s:allTag)
			tags.add(s);
		map.put("Tags", tags);
		return map;
	}
	
	public String checkClass(String courseName,String userId) {
		String result=learnDao.checkClass(courseName, userId);
		return result;
	}
	
	public String checkList(String courseName,String userId) {
		String result=learnDao.checkList(courseName, userId);
		return result;
	}
	
	public int insertClass(String courseName,String userId) {
		String courseid=learnDao.getCourseIdByCourseName(courseName);
		Map<String,String> param=new HashMap<>();
		param.put("coursename", courseName);
		param.put("userid", userId);
		param.put("courseid", courseid);
		int result=learnDao.insertClass(param);
		return result;
	}
	
	public int insertList(String courseName,String userId) {
		String courseid=learnDao.getCourseIdByCourseName(courseName);
		Map<String,String> param=new HashMap<>();
		param.put("coursename", courseName);
		param.put("userid", userId);
		param.put("courseid", courseid);
		int result=learnDao.insertList(param);
		return result;
	}
	
	public int deleteClass(String courseName,String userId) {
		Map<String,String> param=new HashMap<>();
		param.put("coursename", courseName);
		param.put("userid", userId);
		int result=learnDao.deleteClass(param);
		return result;
	}
	
	public int deleteList(String courseName,String userId) {
		Map<String,String> param=new HashMap<>();
		param.put("coursename", courseName);
		param.put("userid", userId);
		int result=learnDao.deleteList(param);
		return result;
	}
}
