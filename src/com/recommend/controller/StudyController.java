package com.recommend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/video")
public class StudyController {
	
	@RequestMapping(value="/{videoId}")
	public String goStudy(@PathVariable String videoId) {
		return "study";
	}
}
