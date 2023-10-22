package com.springproject.dunk.ms.dao;

import java.util.List;
import java.util.Map;

import com.springproject.dunk.ch.domain.PlaceBook;
import com.springproject.dunk.ms.domain.UserBookList;

public interface UserBookDao {

	//예약리스트불러오기
	public abstract List<PlaceBook> getUserPlaceList(int startRow, int num);
	//게시글 갯수 세오는 메서드
	public abstract int getBoardCount();
	//아이디별로 예약리스트불러오기
	public abstract List<UserBookList> getUserPlace(String userId);
	
}
