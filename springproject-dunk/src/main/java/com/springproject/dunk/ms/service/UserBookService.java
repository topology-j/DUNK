package com.springproject.dunk.ms.service;

import java.util.List;
import java.util.Map;

import com.springproject.dunk.ch.domain.PlaceBook;
import com.springproject.dunk.ms.domain.UserBookList;

public interface UserBookService {
	
	//농구장예약리스트를 모두불러오기
	public abstract Map<String, Object> getUserPlaceList(int pageNum);

	//아이디별로 예약리스트불러오기
	public abstract Map<String, Object> getUserPlace(String userId);
	
	
	
	}