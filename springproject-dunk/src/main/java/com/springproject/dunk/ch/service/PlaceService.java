package com.springproject.dunk.ch.service;

import java.sql.Date;
import java.util.List;

import com.springproject.dunk.ch.domain.Board;
import com.springproject.dunk.ch.domain.PlaceBook;

public interface PlaceService {

	// 날짜 별 체육관 예약 리스트
    public abstract List<String> placeBookingList(int placeNo, Date dates);
    
	// placeBook 정보 DB에 추가
    public abstract void insertPlaceBook(PlaceBook placeBook);

    public Board getPlaceDetail(int no, boolean isCount);
}
