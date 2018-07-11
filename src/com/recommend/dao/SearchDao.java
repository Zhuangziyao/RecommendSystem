package com.recommend.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.recommend.entity.Course;

public class SearchDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<Course> search(String coursename){
		List<Course> course=new ArrayList<>(); 
		course=sqlSessionTemplate.selectList("com.recommend.mapper.CourseMapper.getCourseBySearchName",coursename);
		return course;
	}
}
