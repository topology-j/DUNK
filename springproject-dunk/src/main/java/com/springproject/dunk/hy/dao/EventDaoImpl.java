package com.springproject.dunk.hy.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproject.dunk.hy.domain.Event;
import com.springproject.dunk.hy.domain.EventComment;

@Repository
public class EventDaoImpl implements EventDao {

	private final String NAME_SPACE="com.springproject.dunk.mapper.EventMapper";
	
	private SqlSessionTemplate sqlSession;

	@Autowired
	public EventDaoImpl(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<Event> eventList(int startRow, int num, String type, String keyword) {	
		
		Map<String, Object> params=new HashMap<>();
		
		params.put("startRow", startRow);
		params.put("num", num);
		params.put("type", type);
		params.put("keyword", keyword);
		
		return sqlSession.selectList(NAME_SPACE+".eventList", params);
	}

	@Override
	public Event getEvent(int no) {		
		return sqlSession.selectOne(NAME_SPACE+".getEvent", no);
	}

	@Override
	public void insertEvent(Event e) {
		
		sqlSession.insert(NAME_SPACE+".insertEvent", e);		
	}
	
	@Override
	public void updateEvent(Event e) {
		sqlSession.update(NAME_SPACE+".updateEvent", e);		
	}
	
	@Override
	public void deleteEvent(int no) {
		sqlSession.delete(NAME_SPACE+".deleteEvent", no);			
	}
	
	@Override
	public void incrementReadCount(int no) {
		sqlSession.update(NAME_SPACE+".incrementReadCount", no);		
	}
	
	@Override
	public void recommend(int no) {
		sqlSession.update(NAME_SPACE+".recommend", no);		
	}

	@Override
	public int getEventCount(String type, String keyword) {		
		
		Map<String, Object> params=new HashMap<>();
		
		params.put("type", type);
		params.put("keyword", keyword);
		
		return sqlSession.selectOne(NAME_SPACE+".getEventCount", params);	
	}

	@Override
	public List<EventComment> commentList(int no) {		
		return sqlSession.selectList(NAME_SPACE+".commentList", no);
	}

	@Override
	public void addEventComment(EventComment ec) {
		sqlSession.insert(NAME_SPACE+".addEventComment", ec);		
	}

	@Override
	public EventComment getEventComment(int no) {		
		return sqlSession.selectOne(NAME_SPACE+".getEventComment", no);
	}

	@Override
	public void updateEventComment(EventComment ec) {
		sqlSession.update(NAME_SPACE+".updateEventComment", ec);		
	}

	@Override
	public void deleteEventComment(int no) {
		sqlSession.delete(NAME_SPACE+".deleteEventComment", no);		
	}

	
	
}
