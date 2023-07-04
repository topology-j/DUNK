package com.springproject.dunk.hy.service;

import java.util.List;
import java.util.Map;

import com.springproject.dunk.hy.domain.Event;
import com.springproject.dunk.hy.domain.EventComment;

public interface EventService {

	public Map<String, Object> eventList(int pageNum, String type, String keyword);
	
	public Event getEvent(int no, boolean isCount, boolean isCommentCount);	
	
	public void insertEvent(Event e);
	
	public void updateEvent(Event e);
	
	public void deleteEvent(int no);
	
	public void recommend(int no);
	
	public List<EventComment> commentList(int no);
	
	public void addEventComment(EventComment ec);
	
	public EventComment getEventComment(int no);	
	
	public void updateEventComment(EventComment ec);
	
	public void deleteEventComment(int no);
	
}
