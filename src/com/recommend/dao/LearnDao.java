package com.recommend.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.recommend.entity.Course;

@Repository
public class LearnDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public Course getCourseInfoById(String courseId){
		Course course=sqlSessionTemplate.selectOne("com.recommend.mapper.CourseMapper.getCourseById",courseId);
		return course;
	}
	
	public String checkClass(String courseName,String userId) {
		Map<String,String> param=new HashMap<>();
		param.put("coursename", courseName);
		param.put("userid", userId);
		String result=sqlSessionTemplate.selectOne("com.recommend.mapper.ClassMapper.checkClassBycNameAnduId",param);
		return result;
	}
	
	public String getCourseIdByCourseName(String coursename) {
		String courseid=sqlSessionTemplate.selectOne("com.recommend.mapper.CourseMapper.getCourseIdByCourseName",coursename);
		return courseid;
	}
	
	public String checkList(String courseName,String userId) {
		Map<String,String> param=new HashMap<>();
		param.put("coursename", courseName);
		param.put("userid", userId);
		String result=sqlSessionTemplate.selectOne("com.recommend.mapper.ListMapper.checkListBycNameAnduId",param);
		return result;
	}
	
	public int insertClass(Map<String,String> param) {
		int result=sqlSessionTemplate.insert("com.recommend.mapper.ClassMapper.insertClass",param);
		return result;
	}
	
	public int insertList(Map<String,String> param) {
		int result=sqlSessionTemplate.insert("com.recommend.mapper.ListMapper.insertList",param);
		return result;
	}
	
	public int deleteClass(Map<String,String> param) {
		int result=sqlSessionTemplate.insert("com.recommend.mapper.ClassMapper.deleteClass",param);
		return result;
	}
	
	public int deleteList(Map<String,String> param) {
		int result=sqlSessionTemplate.insert("com.recommend.mapper.ListMapper.deleteList",param);
		return result;
	}
}
