package com.recommend.controller;

import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recommend.service.CommendService;
import com.recommend.util.test.UserCFTest;

@Controller
@Component
@RequestMapping("/recommend")
public class CommendController {
	@Autowired
	private CommendService commendService;
	
	@RequestMapping("")
	public String toRecommend() {
		return "commend";
	}
	
	@RequestMapping("/getCourse")
	@ResponseBody
	public List<Map<String,String>> getRecommend(HttpServletRequest request) {
		String userid=request.getParameter("userid");
		List<Map<String,String>> courseInfo=commendService.getRecommend(userid);
		return courseInfo;
		
	}
	
}
