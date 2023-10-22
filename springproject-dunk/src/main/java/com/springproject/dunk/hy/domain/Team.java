package com.springproject.dunk.hy.domain;

public class Team {

	private int no;
	private String name;
	private String leaderId;
	private String leaderNick;
	private int peopleNum;
	private int matchNum;
	private String explanation;
	
	public Team() {}

	public Team(int no, String name, String leaderId, String leaderNick, int peopleNum, int matchNum,
			String explanation) {	
		this.no = no;
		this.name = name;
		this.leaderId = leaderId;
		this.leaderNick = leaderNick;
		this.peopleNum = peopleNum;
		this.matchNum = matchNum;
		this.explanation = explanation;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLeaderId() {
		return leaderId;
	}

	public void setLeaderId(String leaderId) {
		this.leaderId = leaderId;
	}

	public String getLeaderNick() {
		return leaderNick;
	}

	public void setLeaderNick(String leaderNick) {
		this.leaderNick = leaderNick;
	}

	public int getPeopleNum() {
		return peopleNum;
	}

	public void setPeopleNum(int peopleNum) {
		this.peopleNum = peopleNum;
	}

	public int getMatchNum() {
		return matchNum;
	}

	public void setMatchNum(int matchNum) {
		this.matchNum = matchNum;
	}

	public String getExplanation() {
		return explanation;
	}

	public void setExplanation(String explanation) {
		this.explanation = explanation;
	}
		
}
