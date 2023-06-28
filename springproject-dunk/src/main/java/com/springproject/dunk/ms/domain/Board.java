package com.springproject.dunk.ms.domain;

import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

public class Board {

	private int no;
	private String name;	
	private String zipcode;
	private String address1;
	private String address2;
	private String area;
	private String phone;
	private int pay;
	private Time startTime;
	private Time endTime;
	private int availNum;
	private String content;
	private boolean park;
	private int readCount;
	private int recommend;
	private int thank;
	private  float latitude;
	private  float longitude;
	private String image1;
	private String image2;
	private String image3;
	private String image4;

	public Board() {}

	public Board(int no, String name, String zipcode, String address1, String address2, String area, String phone,
			int pay, Time startTime, Time endTime, int availNum, String content, boolean park, int readCount,
			int recommend, int thank, float latitude, float longitude, String image1, String image2, String image3,
			String image4) {
		super();
		this.no = no;
		this.name = name;
		this.zipcode = zipcode;
		this.address1 = address1;
		this.address2 = address2;
		this.area = area;
		this.phone = phone;
		this.pay = pay;
		this.startTime = startTime;
		this.endTime = endTime;
		this.availNum = availNum;
		this.content = content;
		this.park = park;
		this.readCount = readCount;
		this.recommend = recommend;
		this.thank = thank;
		this.latitude = latitude;
		this.longitude = longitude;
		this.image1 = image1;
		this.image2 = image2;
		this.image3 = image3;
		this.image4 = image4;
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

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getPay() {
		return pay;
	}

	public void setPay(int pay) {
		this.pay = pay;
	}

	public Time getStartTime() {
		return startTime;
	}

	public void setStartTime(Time startTime) {
		this.startTime = startTime;
	}

	public Time getEndTime() {
		return endTime;
	}

	public void setEndTime(Time endTime) {
		this.endTime = endTime;
	}

	public int getAvailNum() {
		return availNum;
	}

	public void setAvailNum(int availNum) {
		this.availNum = availNum;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public boolean isPark() {
		return park;
	}

	public void setPark(boolean park) {
		this.park = park;
	}

	public int getReadCount() {
		return readCount;
	}

	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}

	public int getRecommend() {
		return recommend;
	}

	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}

	public int getThank() {
		return thank;
	}

	public void setThank(int thank) {
		this.thank = thank;
	}

	public float getLatitude() {
		return latitude;
	}

	public void setLatitude(float latitude) {
		this.latitude = latitude;
	}

	public float getLongitude() {
		return longitude;
	}

	public void setLongitude(float longitude) {
		this.longitude = longitude;
	}

	public String getImage1() {
		return image1;
	}

	public void setImage1(String image1) {
		this.image1 = image1;
	}

	public String getImage2() {
		return image2;
	}

	public void setImage2(String image2) {
		this.image2 = image2;
	}

	public String getImage3() {
		return image3;
	}

	public void setImage3(String image3) {
		this.image3 = image3;
	}

	public String getImage4() {
		return image4;
	}

	public void setImage4(String image4) {
		this.image4 = image4;
	}
	
	
}
	
