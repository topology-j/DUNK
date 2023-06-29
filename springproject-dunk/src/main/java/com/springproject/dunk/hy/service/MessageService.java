package com.springproject.dunk.hy.service;

import java.util.Map;

import com.springproject.dunk.hy.domain.Message;

public interface MessageService {

	public Map<String, Object> messageList(String id, int pageNum);
	
	public Message getMessage(int no);
	
	public void addReadMessage(int no);
	
	public void addMessage(Message message);
	
	public void deleteMessage(int no);

	public boolean isNewMessage(String id);	
	
}
