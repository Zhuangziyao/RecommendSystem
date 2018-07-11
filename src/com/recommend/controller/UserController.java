package com.recommend.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.recommend.service.UserService;

import org.apache.log4j.*;
@Controller
@RequestMapping("/user")
public class UserController {
	
	private static Logger log=Logger.getLogger(UserController.class);
	@Autowired
	private UserService userService;
	
	@RequestMapping("/checkuser")
	@ResponseBody
	public Map<String,String> checkUser(HttpServletRequest request) {
		String id=request.getParameter("id");
		String userid=userService.checkUserById(id);
		Map<String,String> user=new HashMap<String,String>();
		user.put("userid", userid);
		
		return user;
	}
	
	@RequestMapping("/register")
	@ResponseBody
	public int register(HttpServletRequest request) {
		String id=request.getParameter("id");
		String password=request.getParameter("password");
		String name;
		if(request.getParameter("name").equals(null))
			name="";
		else
			name=request.getParameter("name");
		long phonenumber;
		if(request.getParameter("phonenumber").equals(null))
			phonenumber=0;
		else
			phonenumber=Long.parseLong(request.getParameter("phonenumber"));
		String email;
		if(request.getParameter("email").equals(null))
			email="";
		else
			email=request.getParameter("email");
		Map<String,Object> account=new HashMap<String,Object>();
		account.put("id", id);
		account.put("password", password);
		account.put("name", name);
		account.put("phonenumber", phonenumber);
		account.put("email", email);
		log.debug(id+"×¢²áÕËºÅ");
		int result=userService.registerUser(account);
		return result;
	}
	
	@RequestMapping("/login")
	@ResponseBody
	public Map<String,String> login(HttpServletRequest request) {
		String id=request.getParameter("id");
		String password=request.getParameter("password");
		Map<String,String> user=new HashMap<String,String>();
		user.put("userid", id);
		user.put("userpwd", password);
		String userid=userService.getUserByIdAndPwd(user);
		log.debug(id+"µÇÂ¼ÕËºÅ");
		Map<String,String> backUser=new HashMap<String,String>();
		backUser.put("userid", userid);
		return backUser;
	}
	
	@RequestMapping("/setInfo")
	@ResponseBody
	public int setInfo(HttpServletRequest request) {
		Map<String,String> info=new HashMap<>();
		info.put("sex", request.getParameter("sex"));
		info.put("name", request.getParameter("name"));
		info.put("birthday", request.getParameter("birthday"));
		info.put("education", request.getParameter("education"));
		info.put("wantlearn", request.getParameter("wantlearn"));
		info.put("question", request.getParameter("question"));
		info.put("development", request.getParameter("development"));
		info.put("inaugural", request.getParameter("inaugural"));
		info.put("wantmajor", request.getParameter("wantmajor"));
		info.put("hobby", request.getParameter("hobby"));
		info.put("userid", request.getParameter("id"));
		int result=userService.setInfo(info);
		return result;
	}
	
	@RequestMapping("/getInfo")
	public String getInfo() {
		return "getInfo";
	}
}
