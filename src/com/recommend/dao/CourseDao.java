package com.recommend.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.recommend.entity.Course;

@Repository
public class CourseDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<Course> getCourseByClassify(String classify){
		List<Course> course=new ArrayList<>();
		course=sqlSessionTemplate.selectList("com.recommend.mapper.CourseMapper.getCourseByClassify",classify);
		return course;
	}
	
	public List<String> getClassify(){
		List<String> classify=new ArrayList<>();
		classify=sqlSessionTemplate.selectList("com.recommend.mapper.CourseMapper.getClassify");
		return classify;
	}
}
