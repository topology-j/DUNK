
package com.springproject.dunk.ch.dao;

import java.sql.Date;
import java.util.List;

import com.springproject.dunk.ch.domain.Board;
import com.springproject.dunk.ch.domain.PlaceBook;

public interface PlaceDao {

	// 장소 시간 선택 완료 정보 가져오기
    public abstract List<String> placeBookingList(int placeNo, Date dates);
    
    // placeBook 정보 DB에 추가
    public abstract void insertPlaceBook(PlaceBook placeBook);
    
    //no장소 상세보기
  	public abstract Board getPlaceDetail(int no);

  	
  	//장소 조회수 증가 
  	public abstract void incrementReadCount(int no);
}
