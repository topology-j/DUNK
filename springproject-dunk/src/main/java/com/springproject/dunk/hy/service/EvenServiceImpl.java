package com.springproject.dunk.hy.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproject.dunk.hy.dao.EventDao;
import com.springproject.dunk.hy.domain.Event;
import com.springproject.dunk.hy.domain.EventComment;

@Service
public class EvenServiceImpl implements EventService {
	
	private static final int PAGE_SIZE=3;
	
	private static final int PAGE_GROUP=5;
	
	private EventDao dao;
	
	@Autowired	
	public EvenServiceImpl(EventDao dao) {	
		this.dao = dao;
	}
	
	@Override
	public Map<String, Object> eventList(int pageNum, String type, String keyword) {	
		
		int startRow=(pageNum-1)*PAGE_SIZE;
		
		int listCount=0;
		
		listCount=dao.getEventCount(type, keyword);
		
		boolean searchOption=type.equals("null") || keyword.equals("null") ? false : true;
		
		List<Event> eventList=dao.eventList(startRow, PAGE_SIZE, type, keyword);		
		
		int pageCount=listCount/PAGE_SIZE+(listCount%PAGE_SIZE==0  ? 0 : 1);
		
		int startPage=(pageNum/PAGE_GROUP)*PAGE_GROUP+1-(pageNum%PAGE_GROUP==0 ? PAGE_GROUP : 0);
		
		int endPage=startPage+PAGE_GROUP-1;
		
		if(pageCount<endPage) {
			endPage=pageCount;
		}
		
		Map<String, Object> modelMap=new HashMap<>();
		
		modelMap.put("eList", eventList);		
		modelMap.put("pageNum", pageNum);
		modelMap.put("listCount", listCount);
		modelMap.put("pageCount", pageCount);
		modelMap.put("startPage", startPage);
		modelMap.put("endPage", endPage);
		modelMap.put("pageGroup", PAGE_GROUP);	
		modelMap.put("searchOption", searchOption);	
		
		if(searchOption) {
			modelMap.put("type", type);
			modelMap.put("keyword", keyword);
		}			
		
		return modelMap;
	}

	@Override
	public Event getEvent(int no, boolean isCount, boolean isCommentCount) {		
		
		if(isCount && isCommentCount) {
			dao.incrementReadCount(no);
		}
		
		return dao.getEvent(no);
	}
	

	@Override
	public void insertEvent(Event e) {
		dao.insertEvent(e);		
	}

	@Override
	public void updateEvent(Event e) {
		dao.updateEvent(e);
	}
	
	@Override
	public void deleteEvent(int no) {
		dao.deleteEvent(no);		
	}
	
	@Override
	public void recommend(int no) {
		dao.recommend(no);		
	}

	@Override
	public List<EventComment> commentList(int no) {		
		return dao.commentList(no);
	}

	@Override
	public void addEventComment(EventComment ec) {
		dao.addEventComment(ec);		
	}

	@Override
	public EventComment getEventComment(int no) {		
		return dao.getEventComment(no);
	}

	@Override
	public void updateEventComment(EventComment ec) {
		dao.updateEventComment(ec);		
	}

	@Override
	public void deleteEventComment(int no) {
		dao.deleteEventComment(no);		
	}		

}
