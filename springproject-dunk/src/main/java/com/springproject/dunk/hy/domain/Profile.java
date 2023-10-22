package com.springproject.dunk.hy.domain;

public class Profile {

	private String userId;
	private String birth;
	private String gender;
	private String position;
	private String preferredArea;
	private String img;
	private String introduction;
	private int agegroup;
	private String openProfile;
	
	public Profile() {}
	
	public Profile(String userId, String birth, String gender, String position, String preferredArea, String img,
			String introduction, int agegroup, String openProfile) {		
		this.userId = userId;
		this.birth = birth;
		this.gender = gender;
		this.position = position;
		this.preferredArea = preferredArea;
		this.img = img;
		this.introduction = introduction;
		this.agegroup = agegroup;
		this.openProfile = openProfile;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getPreferredArea() {
		return preferredArea;
	}

	public void setPreferredArea(String preferredArea) {
		this.preferredArea = preferredArea;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public int getAgegroup() {
		return agegroup;
	}

	public void setAgegroup(int agegroup) {
		this.agegroup = agegroup;
	}

	public String getOpenProfile() {
		return openProfile;
	}

	public void setOpenProfile(String openProfile) {
		this.openProfile = openProfile;
	}
	
}
