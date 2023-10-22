package com.springproject.dunk.ch.service;

import java.sql.Date;
import java.util.List;

import com.springproject.dunk.ch.domain.PlaceBoard;
import com.springproject.dunk.ch.domain.PlaceBook;

public interface PlaceService {

	// 날짜 별 체육관 예약 리스트
    public abstract List<String> placeBookingList(int placeNo, Date dates);
    
	// placeBook 정보 DB에 추가
    public abstract void insertPlaceBook(PlaceBook placeBook);

    public PlaceBoard getPlaceDetail(int no, boolean isCount);
    //유저 포인트 불러오기
	public abstract int getPoint(String id);

	//placePay 불러오기
    public abstract int getPlacePay(int no);
	
    //예약 시 userPoint-placePay 값 가져오기
	public void updateUserPoint(String id, int updatedPoint);

	
	 
}
