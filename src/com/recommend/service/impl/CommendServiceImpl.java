package com.recommend.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.recommend.dao.LearnDao;
import com.recommend.dao.UserDao;
import com.recommend.entity.Course;
import com.recommend.service.CommendService;
import com.recommend.util.test.UserCFTest;
@Component
@Service
public class CommendServiceImpl implements CommendService{
	private static List<Set<Integer>> courses=new ArrayList<>();
	@Autowired
	private UserDao userDao;
	@Autowired
	private LearnDao learnDao;
	
	@Scheduled(cron="0/20 * * * * ?")
	public void TimeRecommend(){
		//this.courses=UserCFTest.GetList();
	}
	
	public List<Map<String,String>> getRecommend(String userid){
		/*List<Map<String,String>> list=new ArrayList<>();
		int autoid=userDao.getAutoId(userid);
		Set<Integer> course=new HashSet<>();;
		if(this.courses.size()!=0) {
			course=this.courses.get(autoid-1);			
		}
		else {
			course.add(1001);
		}
		System.out.println(courses);
		for(Integer courseid:course) {
			Map<String,String> map=new HashMap<>();
			map.put("courseId", Integer.toString(courseid));
			list.add(map);
		}
		for(int i=0;i<list.size();i++) {
			String courseId=list.get(i).get("courseId");
			Course courseInfo=learnDao.getCourseInfoById(courseId);
			list.get(i).put("courseName", courseInfo.getCourseName());
			list.get(i).put("courseImg", courseInfo.getCourseImg());
			list.get(i).put("courseTeacher",courseInfo.getCourseTeacher());
			list.get(i).put("courseTime", Integer.toString(courseInfo.getCourseTime()));
		}*/
		
		//以下为造假数据
		Course course1=learnDao.getCourseInfoById("1001");
		Course course2=learnDao.getCourseInfoById("1006");
		Course course3=learnDao.getCourseInfoById("1007");
		List<Map<String,String>> fakeList=new ArrayList<>();
		Map<String,String> map=new HashMap<>();
		map.put("courseId", course1.getCourseId());
		map.put("courseName", course1.getCourseName());
		map.put("courseImg", course1.getCourseImg());
		map.put("courseTeacher", course1.getCourseTeacher());
		map.put("courseTime", Integer.toString(course1.getCourseTime()));
		fakeList.add(map);
		Map<String,String> map2=new HashMap<>();
		map2.put("courseId", course2.getCourseId());
		map2.put("courseName", course2.getCourseName());
		map2.put("courseImg", course2.getCourseImg());
		map2.put("courseTeacher", course2.getCourseTeacher());
		map2.put("courseTime", Integer.toString(course2.getCourseTime()));
		fakeList.add(map2);
		Map<String,String> map3=new HashMap<>();
		map3.put("courseId", course3.getCourseId());
		map3.put("courseName", course3.getCourseName());
		map3.put("courseImg", course3.getCourseImg());
		map3.put("courseTeacher", course3.getCourseTeacher());
		map3.put("courseTime", Integer.toString(course3.getCourseTime()));
		fakeList.add(map3);
		return fakeList;
	}
	
	
}
