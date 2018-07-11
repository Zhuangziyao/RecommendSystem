package com.recommend.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recommend.dao.CourseDao;
import com.recommend.entity.Course;
import com.recommend.service.CourseService;
@Service
public class CourseServiceImpl implements CourseService{
	@Autowired
	private CourseDao courseDao;
	
	public List<Course> getCourseByClassify(String classify){
		List<Course> course=new ArrayList<>();
		course=courseDao.getCourseByClassify(classify);
		return course;
	}
	
	public List<String> getFirstClassify(){
		List<String> classify=courseDao.getClassify();
		List<String> first=new ArrayList<>();
		for(String s:classify) {
			String[] results=s.split(" ");
			if(!first.contains(results[0]))
				first.add(results[0]);
		}
		return first;
	}
	
	public List<Map<String,Object>> getSecondClassify(){
		List<String> allClassify=courseDao.getClassify();
		List<Map<String,Object>> classify=new ArrayList<>();
		
		List<String> first=new ArrayList<>();
		for(String s:allClassify) {
			String[] results=s.split(" ");
			if(!first.contains(results[0])) {
				first.add(results[0]);
			}
		}
		
		for(int i=0;i<first.size();i++) {
			Map<String,Object> result=new HashMap<>();
			result.put("first", first.get(i));
			List<String> secondClassify=new ArrayList<>();
			for(String s:allClassify) {
				String[] results=s.split(" ");
				if(result.containsValue(results[0])) {
					if(!secondClassify.contains(results[1]))
						secondClassify.add(results[1]);
				}
			}
			result.put("second", secondClassify);
			classify.add(result);
		}
		return classify;
	}
}
