package com.springproject.dunk.hy.domain;

public class MannerCheck {

	private String userId;
	private int evalNum;
	private int skillEval;
	private int mannerEval;
	private int preManner;
	private int timeManner;
	
	public MannerCheck() {}	
	
	public MannerCheck(String userId, int evalNum, int skillEval, int mannerEval, int preManner, int timeManner) {	
		this.userId = userId;
		this.evalNum = evalNum;
		this.skillEval = skillEval;
		this.mannerEval = mannerEval;
		this.preManner = preManner;
		this.timeManner = timeManner;
	}

	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getEvalNum() {
		return evalNum;
	}
	public void setEvalNum(int evalNum) {
		this.evalNum = evalNum;
	}
	public int getSkillEval() {
		return skillEval;
	}
	public void setSkillEval(int skillEval) {
		this.skillEval = skillEval;
	}
	public int getMannerEval() {
		return mannerEval;
	}
	public void setMannerEval(int mannerEval) {
		this.mannerEval = mannerEval;
	}
	public int getPreManner() {
		return preManner;
	}
	public void setPreManner(int preManner) {
		this.preManner = preManner;
	}
	public int getTimeManner() {
		return timeManner;
	}
	public void setTimeManner(int timeManner) {
		this.timeManner = timeManner;
	}	
	
}
