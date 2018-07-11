package com.recommend.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.recommend.dao.SearchDao;
import com.recommend.entity.Course;
import com.recommend.service.SearchService;

@Service
public class SearchServiceImpl implements SearchService{
	@Autowired
	private SearchDao searchDao;
	
	public List<Course> search(String searchWords){
		List<Course> searchResult=searchDao.search(searchWords);
		return searchResult;
	}
}
