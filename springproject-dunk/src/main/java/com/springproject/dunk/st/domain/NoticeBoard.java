package com.springproject.dunk.st.domain;

import java.sql.Timestamp;

/*//no
title
reg_date
img
content
read_count*/
public class NoticeBoard {
	private int no;
	private String title;
	private Timestamp regDate;
	private int readCount;
	private String img;
	private String content;
	
	public NoticeBoard() {}
	public NoticeBoard(int no, String title, Timestamp regDate, int readCount, String img, String content) {
		this.no = no;
		this.title = title;
		this.img = img;
		this.regDate= regDate;
		this.readCount = readCount;
		this.content = content;
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
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
