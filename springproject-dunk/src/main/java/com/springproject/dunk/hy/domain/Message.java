package com.springproject.dunk.hy.domain;

import java.sql.Timestamp;

public class Message {

	private int no;	
	private String sendId;
	private String receiveId;
	private String sendNick;
	private String receiveNick;
	private Timestamp regDate;	
	private String content;	
	private int readMessage;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getSendId() {
		return sendId;
	}
	public void setSendId(String sendId) {
		this.sendId = sendId;
	}
	public String getReceiveId() {
		return receiveId;
	}
	public void setReceiveId(String receiveId) {
		this.receiveId = receiveId;
	}
	public String getSendNick() {
		return sendNick;
	}
	public void setSendNick(String sendNick) {
		this.sendNick = sendNick;
	}
	public String getReceiveNick() {
		return receiveNick;
	}
	public void setReceiveNick(String receiveNick) {
		this.receiveNick = receiveNick;
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
	public int getReadMessage() {
		return readMessage;
	}
	public void setReadMessage(int readMessage) {
		this.readMessage = readMessage;
	}	
	
}
