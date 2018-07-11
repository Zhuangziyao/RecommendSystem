package com.recommend.util.algorithm;

public class RatingData {
	
	public int userID;
	public int courseID;
	public int rate;
	public int data;
	
	public RatingData(String userID,String courseID,String rate,String data){
		this.userID= Integer.parseInt(userID);
		this.courseID= Integer.parseInt(courseID);
		this.rate= Integer.parseInt(rate);
		this.data= Integer.parseInt(data);
	}

}
