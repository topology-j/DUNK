package com.springproject.dunk.hy.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproject.dunk.hy.domain.Message;

@Repository
public class MessageDaoImpl implements MessageDao {

	private final String NAME_SPACE="com.springproject.dunk.mapper.MessageMapper";	
	
	private SqlSessionTemplate sqlSession;

	@Autowired
	public MessageDaoImpl(SqlSessionTemplate sqlSession) {		
		this.sqlSession = sqlSession;
	}

	@Override
	public List<Message> messageList(String id, int startRow, int num) {		
		
		Map<String, Object> params=new HashMap<>();
		
		params.put("id", id);
		params.put("startRow", startRow);
		params.put("num", num);
		
		return sqlSession.selectList(NAME_SPACE+".messageList", params);
	}

	@Override
	public Message getMessage(int no) {		
		return sqlSession.selectOne(NAME_SPACE+".getMessage", no);
	}

	@Override
	public void addReadMessage(int no) {
		sqlSession.update(NAME_SPACE+".addReadMessage", no);		
	}

	@Override
	public void addMessage(Message message) {
		sqlSession.insert(NAME_SPACE+".addMessage", message);		
	}

	@Override
	public void deleteMessage(int no) {
		sqlSession.delete(NAME_SPACE+".deleteMessage", no);		
	}

	@Override
	public int getMessageCount(String id) {		
		return sqlSession.selectOne(NAME_SPACE+".getMessageCount", id);
	}

	@Override
	public List<Message> messageList2(String id) {		
		return sqlSession.selectList(NAME_SPACE+".messageList2", id);
	}
	
}
