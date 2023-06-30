
package com.springproject.dunk.ch.dao;

import java.sql.Date;
import java.util.List;

import com.springproject.dunk.ch.domain.PlaceBoard;
import com.springproject.dunk.ch.domain.PlaceBook;

public interface PlaceDao {

	// 장소 시간 선택 완료 정보 가져오기
    public abstract List<String> placeBookingList(int placeNo, Date dates);
    
    // placeBook 정보 DB에 추가
    public abstract void insertPlaceBook(PlaceBook placeBook);
    
    //no장소 상세보기
  	public abstract PlaceBoard getPlaceDetail(int no);

  	//장소 조회수 증가 
  	public abstract void incrementReadCount(int no);

  	//매칭에 지원시 포인트 불러오기
    public abstract int getPoint(String id);
    
    //매칭 신청할때 해당 Matching의 pay 불러오기
    public abstract int getPlacePay(int no);

    //신청하기 누르면 Matching에 해당하는 Pay만큼 user의 point차감
    public void updateUserPoint(String id, int updatedPoint);
}
