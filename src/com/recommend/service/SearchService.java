package com.recommend.service;

import java.util.List;

import com.recommend.entity.Course;

public interface SearchService {
	public List<Course> search(String searchWords);
}
