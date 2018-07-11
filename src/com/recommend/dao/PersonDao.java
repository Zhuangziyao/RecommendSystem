package com.recommend.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.recommend.entity.Course;

@Repository
public class PersonDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<Course> getClass(String userid){
		List<Course> classInfo=sqlSessionTemplate.selectList("com.recommend.mapper.ClassMapper.getClassByUserId",userid);
		return classInfo;
	}
	
	public List<Course> getList(String userid){
		List<Course> listInfo=sqlSessionTemplate.selectList("com.recommend.mapper.ListMapper.getListByUserId",userid);
		return listInfo;
	}
	
	public void quitClass(Map<String,String> map) {
		int rows=sqlSessionTemplate.delete("com.recommend.mapper.ClassMapper.deleteClass",map);
	}
	
	public void quitList(Map<String,String> map) {
		int rows=sqlSessionTemplate.delete("com.recommend.mapper.ListMapper.deleteList",map);
	}
}
