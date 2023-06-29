package com.springproject.dunk.hy.domain;

import java.sql.Timestamp;



public class TeamRecruitment {

	private int no;
	private String userId;
	private String userNick;
	private int teamNo;
	private String title;
	private String name;
	private int personnel;
	private String preferredArea;
	private String preferredDay;
	private String gender;
	private String content;
	private Timestamp regDate;
	private int readCount;
	
	public TeamRecruitment() {}

	public TeamRecruitment(int no, String userId, String userNick, int teamNo, String title, String name, int personnel,
			String preferredArea, String preferredDay, String gender, String content, Timestamp regDate,
			int readCount) {		
		this.no = no;
		this.userId = userId;
		this.userNick = userNick;
		this.teamNo = teamNo;
		this.title = title;
		this.name = name;
		this.personnel = personnel;
		this.preferredArea = preferredArea;
		this.preferredDay = preferredDay;
		this.gender = gender;
		this.content = content;
		this.regDate = regDate;
		this.readCount = readCount;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserNick() {
		return userNick;
	}

	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}

	public int getTeamNo() {
		return teamNo;
	}

	public void setTeamNo(int teamNo) {
		this.teamNo = teamNo;
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

	public int getPersonnel() {
		return personnel;
	}

	public void setPersonnel(int personnel) {
		this.personnel = personnel;
	}

	public String getPreferredArea() {
		return preferredArea;
	}

	public void setPreferredArea(String preferredArea) {
		this.preferredArea = preferredArea;
	}

	public String getPreferredDay() {
		return preferredDay;
	}

	public void setPreferredDay(String preferredDay) {
		this.preferredDay = preferredDay;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}

	public int getReadCount() {
		return readCount;
	}

	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
		
}


