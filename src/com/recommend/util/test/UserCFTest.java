package com.recommend.util.test;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.recommend.util.algorithm.DataBaseManager;
import com.recommend.util.algorithm.RatingData;
import com.recommend.util.algorithm.UserCF;

public class UserCFTest {
	
	private static DataBaseManager db;
	private static ResultSet rs;
	private static String[][] recordValue;
	
	public int userID;
	public Set<Integer> TrainID = new HashSet<Integer>();
	public Set<Integer> TestID = new HashSet<Integer>();

	public static Map<Integer, Integer> map = new HashMap<Integer, Integer>();

	public static Map<Integer, Set<Integer>> ItemUserMap = new HashMap<Integer, Set<Integer>>();

	public static ArrayList<Set<Integer>> GetList() {
		Map<Integer,UserCFTest> map = new HashMap<Integer, UserCFTest>();
		Map<Integer, Set<Integer>> userMap = new HashMap<Integer, Set<Integer>>();
		
		//连接数据库
		db=new DataBaseManager();
		db.Connect();
		
		//查询相对应的表
		String sql="Select * from user_coursetable";
		rs = db.queryInDB(sql);
		recordValue=db.getRecordsData();
		
		//关闭连接数据库
		db.closeConnection();
		
		for(int i=0;i<recordValue.length;++i){
			RatingData data = new RatingData(recordValue[i][0],
					recordValue[i][1],
					recordValue[i][2],
					recordValue[i][3]);

			if(UserCFTest.map.containsKey(data.courseID)){
				UserCFTest.ItemUserMap.get(data.courseID).add(data.userID);
				UserCFTest.map.put(data.courseID, UserCFTest.map.get(data.courseID) + 1);
			}
			else {
				Set<Integer> set = new HashSet<Integer>();
				set.add(data.userID);
				UserCFTest.ItemUserMap.put(data.courseID, set);
				UserCFTest.map.put(data.courseID, 1);
			}

			if(map.containsKey(data.userID)){
				map.get(data.userID).TestID.add(data.courseID);
			}else {
				UserCFTest userCF = new UserCFTest();
				userCF.TestID.add(data.courseID);
				map.put(data.userID, userCF);
			}

			if(map.containsKey(data.userID)){
				map.get(data.userID).TrainID.add(data.courseID);
			}else {
				UserCFTest userCF = new UserCFTest();
				userCF.TrainID.add(data.courseID);
				map.put(data.userID, userCF);
			}

		}

		for(Integer key: map.keySet())
			userMap.put(key, map.get(key).TrainID);

		List<Integer> rand = new ArrayList<Integer>();
		Map<Integer, Float> hotMap = new HashMap<Integer, Float>();
		for(Integer item: UserCFTest.ItemUserMap.keySet()){
			hotMap.put(item, (float) UserCFTest.ItemUserMap.get(item).size());
			rand.add(item);
		}

		UserCF userCF=new UserCF();
		userCF.K = 40;
		userCF.SysK = 10;
		ArrayList<Set<Integer>> output=new ArrayList<Set<Integer>>();
		for(UserCFTest testUserCF: map.values()){
			//System.out.println(userCF.getResysList(testUserCF.TrainID, userMap));
			output.add(userCF.getResysList(testUserCF.TrainID, userMap));
		}
		return output;
		
	}
	
	
}
