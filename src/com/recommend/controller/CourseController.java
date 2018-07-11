package com.recommend.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.lang.annotation.Repeatable;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.recommend.entity.Course;
import com.recommend.service.CourseService;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("/course")
public class CourseController {
	@Autowired
	private CourseService courseService;
	
	@RequestMapping("")
	public String goCourse() {
		return "class";
	}
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String getClass(HttpServletRequest request,HttpServletResponse response,Model model) {
		String classify="金融学基础理论";;
		try {
			classify=request.getParameter("course");
		}catch(Exception e) {
			e.printStackTrace();
		}
		List<Course> course=courseService.getCourseByClassify(classify);
		List<Map<String,String>> list=new ArrayList<>();
		for(int i=0;i<course.size();i++) {
			Map<String, String> map=new HashMap<>();
			map.put("courseId", course.get(i).getCourseId());
			map.put("courseName", course.get(i).getCourseName());
			map.put("courseImg", course.get(i).getCourseImg());
			map.put("learnedNumber", Integer.toString(course.get(i).getLearnedNumber()));
			list.add(map);
		}
		model.addAttribute("json",list);
		
		return "class";
	}
	
	@RequestMapping(value="/list",method=RequestMethod.POST)	
	@ResponseBody
	public List<Map<String,String>> getClassByPost(HttpServletRequest request) {
		String classify=request.getParameter("course");		
		List<Course> course=courseService.getCourseByClassify(classify);
		List<Map<String,String>> list=new ArrayList<>();
		for(int i=0;i<course.size();i++) {
			Map<String, String> map=new HashMap<>();
			map.put("courseId", course.get(i).getCourseId());
			map.put("courseName", course.get(i).getCourseName());
			map.put("courseImg", course.get(i).getCourseImg());
			map.put("learnedNumber", Integer.toString(course.get(i).getLearnedNumber()));
			list.add(map);
		}
		return list;
	}
	
	
	@RequestMapping("/firstclassify")
	@ResponseBody
	public List<String> getFirstClassify(){
		List<String> firstClassify=courseService.getFirstClassify();
		return firstClassify;
	}
	
	@RequestMapping("/secondclassify")
	@ResponseBody
	public List<Map<String,Object>> getSecondClassify(){
		List<Map<String,Object>> classify=courseService.getSecondClassify();
		return classify;
	}
	
}
