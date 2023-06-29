package com.springproject.dunk.hy.domain;

import java.sql.Timestamp;

public class TeamMatch {

	private int no;
	private String title;
	private String writerId;
	private String writerNick;
	private int bookNo;
	private int teamNo;
	private Timestamp date;
	private String time;
	private String gender;
	private String level;
	private String pay;
	private String process;
	private String information;
	private int readCount;
	
	public TeamMatch() {}

	public TeamMatch(int no, String title, String writerId, String writerNick, int bookNo, int teamNo, Timestamp date,
			String time, String gender, String level, String pay, String process, String information, int readCount) {	
		this.no = no;
		this.title = title;
		this.writerId = writerId;
		this.writerNick = writerNick;
		this.bookNo = bookNo;
		this.teamNo = teamNo;
		this.date = date;
		this.time = time;
		this.gender = gender;
		this.level = level;
		this.pay = pay;
		this.process = process;
		this.information = information;
		this.readCount = readCount;
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

	public String getWriterId() {
		return writerId;
	}

	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}

	public String getWriterNick() {
		return writerNick;
	}

	public void setWriterNick(String writerNick) {
		this.writerNick = writerNick;
	}

	public int getBookNo() {
		return bookNo;
	}

	public void setBookNo(int bookNo) {
		this.bookNo = bookNo;
	}

	public int getTeamNo() {
		return teamNo;
	}

	public void setTeamNo(int teamNo) {
		this.teamNo = teamNo;
	}

	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}

	public String getProcess() {
		return process;
	}

	public void setProcess(String process) {
		this.process = process;
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
		
}
