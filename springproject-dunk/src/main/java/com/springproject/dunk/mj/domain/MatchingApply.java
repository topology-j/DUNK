package com.springproject.dunk.mj.domain;

//매칭 모집 지원 테이블
public class MatchingApply {
	private int no;
	private int matchingNo;
	private String userId;
	private int teamIndividual;
	private int teamNo;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getMatchingNo() {
		return matchingNo;
	}
	public void setMatchingNo(int matchingNo) {
		this.matchingNo = matchingNo;
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

}
