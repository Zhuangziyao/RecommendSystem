package com.recommend.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recommend.entity.Course;
import com.recommend.service.PersonService;

@Controller
@RequestMapping("/person")
public class PersonController {
	@Autowired
	private PersonService personService;
	
	@RequestMapping("/{userid}")
	public String goPerson(@PathVariable String userid) {
		
		return "person";
	}
	
	@RequestMapping("/getClassAndList")
	@ResponseBody
	public Map<String,Object> getClassAndList(HttpServletRequest request){
		String userid=request.getParameter("userid");
		Map<String,Object> info=personService.getClassAndList(userid);
		return info;
	}
	
	@RequestMapping("/quitClass")
	@ResponseBody
	public List<Course> quitClass(HttpServletRequest request) {
		Map<String,String> map=new HashMap<>();
		map.put("userid", request.getParameter("userid"));
		map.put("courseid",request.getParameter("courseid"));
		personService.quitClass(map);
		List<Course> info=personService.getClass(request.getParameter("userid"));
		return info;
	}
	
	@RequestMapping("/quitList")
	@ResponseBody
	public List<Course> quitList(HttpServletRequest request) {
		Map<String,String> map=new HashMap<>();
		map.put("userid", request.getParameter("userid"));
		map.put("courseid",request.getParameter("courseid"));
		personService.quitList(map);
		List<Course> info1=personService.getList(request.getParameter("userid"));
		return info1;
	}
}
