package com.springproject.dunk.mj.domain;

import java.sql.Date;

public class Matching {
	// no, place_no, name, date, gender, level,	pay, possible _impossible,information,read_count																
	private int no;
	private int placeNo;	
	private String title;
	//private String date;
	private Date date;
	private String time;
	private int inwon;
	private int gender;
	private String level;
	private int pay;
	private int possibleImpossible;
	private String information;
	private int readCount;
	private String userId;
	
	public Matching() { }
	public Matching(int no, int placeNo, String title, Date date, String time, int inwon,
			int gender, String level, int pay, int possibleImpossible, String information, int readCount, String userId) 
	{
		this.no = no;
		this.placeNo = placeNo;
		this.title = title;
		this.date = date;
		this.time = time;
		this.inwon = inwon;
		this.gender = gender;
		this.level = level;
		this.pay = pay;
		this.possibleImpossible = possibleImpossible;
		this.information = information;
		this.readCount = readCount;
		this.userId = userId;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getPlaceNo() {
		return placeNo;
	}
	public void setPlaceNo(int placeNo) {
		this.placeNo = placeNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getDate() {
		return date;
	}
	
	public void setDate(Date date) {
		this.date = date;
	}
	
	public String getTime() {
		return time;
	}
	
	public void setTime(String time) {
		this.time = time;
	}
	
	public int getInwon() {
		return inwon;
	}
	
	public void setInwon(int inwon) {
		this.inwon = inwon;
	}
	
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public int getPay() {
		return pay;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	public int getPossibleImpossible() {
		return possibleImpossible;
	}
	public void setPossibleImpossible(int possibleImpossible) {
		this.possibleImpossible = possibleImpossible;
	}
	public String getInformation() {
		return information;
	}
	public void setInformation(String information) {
		this.information = information;
	}
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
}
