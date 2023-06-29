package com.springproject.dunk.hy.service;

import java.util.List;
import java.util.Map;

import com.springproject.dunk.hy.domain.Event;
import com.springproject.dunk.hy.domain.EventComment;

public interface EventService {

	public Map<String, Object> eventList(int pageNum, String type, String keyword);
	
	public Event getEvent(int no, boolean isCount);	
	
	public void insertEvent(Event e);
	
	public void updateEvent(Event e);
	
	public void deleteEvent(int no);
	
	public void recommend(int no);
	
	public List<String> getImages(int no);
	
	public List<EventComment> commentList(int no);
	
	public void addEventComment(EventComment ec);
	
}
