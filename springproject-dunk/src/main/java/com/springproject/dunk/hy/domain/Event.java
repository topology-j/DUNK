package com.springproject.dunk.hy.domain;

import java.sql.Timestamp;

public class Event {

	private int no;
	private String title;
	private String titleImg;
	private Timestamp regDate;
	private String content;
	private String contentImg;
	private int readCount;
	private int recommend;		
	
	public Event() {}

	public Event(int no, String title, String titleImg, Timestamp regDate, String content, String contentImg,
			int readCount, int recommend) {		
		this.no = no;
		this.title = title;
		this.titleImg = titleImg;
		this.regDate = regDate;
		this.content = content;
		this.contentImg = contentImg;
		this.readCount = readCount;
		this.recommend = recommend;
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

	public String getTitleImg() {
		return titleImg;
	}

	public void setTitleImg(String titleImg) {
		this.titleImg = titleImg;
	}

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getContentImg() {
		return contentImg;
	}

	public void setContentImg(String contentImg) {
		this.contentImg = contentImg;
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
	
}
