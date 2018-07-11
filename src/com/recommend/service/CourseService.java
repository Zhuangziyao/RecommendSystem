package com.recommend.service;

import java.util.List;
import java.util.Map;

import com.recommend.entity.Course;

public interface CourseService {
	public List<Course> getCourseByClassify(String classify);
	
	public List<String> getFirstClassify();
	
	public List<Map<String,Object>> getSecondClassify();
}
