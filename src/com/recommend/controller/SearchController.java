package com.recommend.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recommend.entity.Course;
import com.recommend.service.CourseService;
import com.recommend.service.LearnService;
import com.recommend.service.SearchService;

@Controller
public class SearchController {
	@Autowired
	private SearchService searchService;
	@Autowired
	private LearnService learnService;
	
	@RequestMapping(value="/search",method=RequestMethod.GET)
	public String search(HttpServletRequest request,Model model) {
		String searchWords=request.getParameter("words");
		List<Course> searchResult=searchService.search(searchWords);
		String flag;
		if(searchResult.size()==0) {
			flag="IsNull";
			List<Course> result=searchService.search("½ðÈÚ");
			model.addAttribute("searchResult",result);
		}	
		else {
			flag="NotNull";
			model.addAttribute("searchResult",searchResult);
		}			
		model.addAttribute("flag",flag);
		
		return "search";
	}
	
	@RequestMapping(value="/search",method=RequestMethod.POST)
	@ResponseBody
	public List<Map<String,String>> searchPOST(HttpServletRequest request){
		String searchWords=request.getParameter("words");
		List<Course> searchResult=searchService.search(searchWords);
		List<Map<String,String>> list=new ArrayList<>();
		for(int i=0;i<searchResult.size();i++) {
			Map<String,String> map=new HashMap<>();
			map.put("courseId", searchResult.get(i).getCourseId());
			map.put("courseName", searchResult.get(i).getCourseName());
			map.put("courseImg", searchResult.get(i).getCourseImg());
			list.add(map);
		}
		System.out.println(list);
		return list;
	}
}
