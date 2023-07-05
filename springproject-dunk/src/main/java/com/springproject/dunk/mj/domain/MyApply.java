package com.springproject.dunk.mj.domain;

import java.sql.Date;

//매칭 모집 지원 테이블
public class MyApply {
	private int no;
	private String title;
	private String name;
	private String address1;
	private String userId;
	private int teamIndividual;
	private int teamNo;
	private int pay;
	private Date date;
	private String time;
	
	public MyApply() {}
	
	public MyApply(int no, String title, String name, String address1, String userId, int teamIndividual, int teamNo, int pay,
			Date date, String time) {
		super();
		this.no = no;
		this.title = title;
		this.name = name;
		this.address1 = address1;
		this.userId = userId;
		this.teamIndividual = teamIndividual;
		this.teamNo = teamNo;
		this.pay = pay;
		this.date = date;
		this.time = time;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getTeamIndividual() {
		return teamIndividual;
	}
	public void setTeamIndividual(int teamIndividual) {
		this.teamIndividual = teamIndividual;
	}
	public int getTeamNo() {
		return teamNo;
	}
	public void setTeamNo(int teamNo) {
		this.teamNo = teamNo;
	}
	public int getPay() {
		return pay;
	}
	public void setPay(int pay) {
		this.pay = pay;
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
	
	
	
}