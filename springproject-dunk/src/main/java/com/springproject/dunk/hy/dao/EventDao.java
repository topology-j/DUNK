package com.springproject.dunk.hy.dao;

import java.util.List;

import com.springproject.dunk.hy.domain.Event;
import com.springproject.dunk.hy.domain.EventComment;

public interface EventDao {

	public List<Event> eventList(int startRow, int num, String type, String keyword);
	
	public Event getEvent(int no);	
	
	public void insertEvent(Event e);
	
	public void updateEvent(Event e);
	
	public void deleteEvent(int no);
	
	public void incrementReadCount(int no);
	
	public void recommend(int no);	
	
	public int getEventCount(String type, String keyword);	
	
	public List<EventComment> commentList(int no);
	
	public void addEventComment(EventComment ec);
	
	public void updateEventComment(EventComment ec);
	
}
