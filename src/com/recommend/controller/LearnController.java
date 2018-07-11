package com.recommend.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.recommend.service.LearnService;


@Controller
@RequestMapping("/learn")
public class LearnController {
	private static Logger logger=Logger.getLogger(LearnController.class);
	@Autowired
	private LearnService learnService;
	
	@RequestMapping("")
	public String goEachCourse() {
		return "eachClass";
	}
	
	@RequestMapping(value="/{courseId}",method=RequestMethod.GET)
	public ModelAndView getCourseInfo(@PathVariable String courseId,HttpServletResponse response){
		Map<String,Object> course=learnService.getCourseInfoById(courseId);
		ModelAndView mav=new ModelAndView("eachClass","courseInfo",course);
		logger.debug("²é¿´¿Î³Ì£º"+courseId);
		return mav;
	}
	
	@RequestMapping("/addToClass")
	@ResponseBody
	public String addToClass(HttpServletRequest request){
		String courseName=request.getParameter("courseName");
		String userId=request.getParameter("userId");
		int result=learnService.insertClass(courseName, userId);
		return Integer.toString(result);
	}
	
	@RequestMapping("/addToList")
	@ResponseBody
	public String addToList(HttpServletRequest request){
		String courseName=request.getParameter("courseName");
		String userId=request.getParameter("userId");
		int result=learnService.insertList(courseName, userId);
		return Integer.toString(result);
	}
	
	@RequestMapping("/checkCourse")
	@ResponseBody
	public Map<String,String> checkCourse(HttpServletRequest request){
		String courseName=request.getParameter("courseName");
		String userId=request.getParameter("userId");
		String classResult=learnService.checkClass(courseName, userId);
		String listResult=learnService.checkList(courseName, userId);
		Map<String,String> map=new HashMap<>();
		map.put("Class",classResult);
		map.put("List", listResult);
		return map;
	}
}
