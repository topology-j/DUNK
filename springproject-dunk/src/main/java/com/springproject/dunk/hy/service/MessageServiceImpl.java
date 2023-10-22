package com.springproject.dunk.hy.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproject.dunk.hy.dao.MessageDao;
import com.springproject.dunk.hy.domain.Message;

@Service
public class MessageServiceImpl implements MessageService {
	
	private static final int PAGE_SIZE=10;
	private static final int PAGE_GROUP=10;

	private MessageDao dao;

	@Autowired
	public MessageServiceImpl(MessageDao dao) {		
		this.dao = dao;
	}

	@Override
	public Map<String, Object> messageList(String id, int pageNum) {		
		
		int startRow=(pageNum-1)*PAGE_SIZE;
		
		int listCount=dao.getMessageCount(id);
				
		List<Message> mList=dao.messageList(id, startRow, PAGE_SIZE);
		
		int pageCount=listCount/PAGE_SIZE+(listCount%PAGE_SIZE==0 ? 0 : 1);
		
		int startPage=(pageNum/PAGE_GROUP)*PAGE_GROUP+1-(pageNum%PAGE_GROUP==0 ? PAGE_GROUP : 0);

		int endPage=startPage+PAGE_GROUP-1;
		
		if(pageCount<endPage) {
			endPage=pageCount;
		}
		
		Map<String, Object> modelMap=new HashMap<>();
		
		modelMap.put("id", id);
		modelMap.put("mList", mList);
		modelMap.put("pageNum", pageNum);
		modelMap.put("listCount", listCount);
		modelMap.put("pageCount", pageCount);
		modelMap.put("startPage", startPage);
		modelMap.put("endPage", endPage);
		modelMap.put("pageGroup", PAGE_GROUP);
		
		return modelMap;
	}

	@Override
	public Message getMessage(int no) {		
		return dao.getMessage(no);
	}

	@Override
	public void addReadMessage(int no) {
		dao.addReadMessage(no);
	}

	@Override
	public void addMessage(Message message) {
		dao.addMessage(message);		
	}

	@Override
	public void deleteMessage(int no) {
		dao.deleteMessage(no);		
	}

	@Override
	public boolean isNewMessage(String id) {
		
		List<Message> mList=dao.messageList2(id);
		
		for(int i=0; i<mList.size(); i++) {
			
			if(mList.get(i).getReadMessage()==0) {
				return true;
			}
		}
		
		return false;
	}
	
}
