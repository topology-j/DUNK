package com.springproject.dunk.hy.dao;

import java.util.List;

import com.springproject.dunk.hy.domain.Message;

public interface MessageDao {

	public List<Message> messageList(String id, int startRow, int num);
	
	public Message getMessage(int no);
	
	public void addReadMessage(int no);
	
	public void addMessage(Message message);
	
	public void deleteMessage(int no);
	
	public int getMessageCount(String id);
	
	public List<Message> messageList2(String id);	
	
}
