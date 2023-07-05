package com.springproject.dunk.ms.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproject.dunk.ch.domain.PlaceBook;
import com.springproject.dunk.hy.dao.UserDao;
import com.springproject.dunk.ms.dao.UserBookDao;
import com.springproject.dunk.ms.domain.UserBookList;
import com.springproject.dunk.hy.service.UserService;


@Service
public class UserBookServiceImpl implements UserBookService {

	private static final int PAGE_SIZE = 10;
	private static final int PAGE_GROUP =10;
	
	@Autowired
	private UserBookDao userBookDao;
	
	@Autowired
	private UserDao  userDao;
	
	//예약리스트 전부
	@Override
	public Map<String, Object> getUserPlaceList(int pageNum){
	
		int currentPage = pageNum;
		int startRow = (currentPage - 1) * PAGE_SIZE;
		int listCount = 0;
		
		listCount = userBookDao.getBoardCount();
		
		System.out.println("listCount : " + listCount +"startRow:"+startRow);
		
			if(listCount>0) {
				List<PlaceBook> getUserPlaceList = userBookDao.getUserPlaceList(startRow, PAGE_SIZE);
	
				int pageCount = 
						listCount / PAGE_SIZE + (listCount % PAGE_SIZE == 0 ? 0 : 1);
				
				int startPage = (currentPage / PAGE_GROUP) * PAGE_GROUP + 1
						- (currentPage % PAGE_GROUP == 0 ? PAGE_GROUP : 0);
				
				int endPage = startPage + PAGE_GROUP -1;
					
				if(endPage > pageCount) {
					endPage = pageCount;
				}
				
				Map<String, Object> modelMap = new HashMap<String, Object>();
				modelMap.put("getUserPlaceList", getUserPlaceList);
				modelMap.put("pageCount", pageCount);
				modelMap.put("startPage", startPage);
				modelMap.put("endPage", endPage);
				modelMap.put("currentPage", currentPage);
				modelMap.put("listCount", listCount);
				modelMap.put("pageGroup", PAGE_GROUP);
				
				return modelMap;
		
			} else {
			
			return null;
		}
	
	}	
	//아이디당 예약리스트 가져오기
	@Override
	public  Map<String, Object> getUserPlace(String userId){ // getUserPlace 메소드 정의
		
		List<UserBookList> userGetPlace = userBookDao.getUserPlace(userId);// userBookDao에서 getUserPlace 정보 조회 후, UserBookList 객체로 저장
		Map<String, Object> modelMap = new HashMap<String, Object>(); // 반환할 결과를 담기 위한 Map 객체 생성
		modelMap.put("userGetPlace", userGetPlace);// Map 객체에 조회한 getUserPlace 정보를 "getUserPlace"라는 key로 저장
		modelMap.put("userId", userId); // Map 객체에 userId 정보를 "userId"라는 key로 저장
		
		return modelMap;// 완성된 Map 객체 반환
		
	}

	
	
}
