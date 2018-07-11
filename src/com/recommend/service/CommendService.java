package com.recommend.service;

import java.util.List;
import java.util.Map;

public interface CommendService {
	public List<Map<String,String>> getRecommend(String userid);
}
