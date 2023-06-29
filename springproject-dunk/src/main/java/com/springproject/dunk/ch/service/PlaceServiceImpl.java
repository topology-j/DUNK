package com.springproject.dunk.ch.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproject.dunk.ch.dao.PlaceDao;
import com.springproject.dunk.ch.domain.PlaceBoard;
import com.springproject.dunk.ch.domain.PlaceBook;


@Service
public class PlaceServiceImpl implements PlaceService {

	@Autowired
	private PlaceDao dao;

		
	// 날짜 별 체육관 예약 리스트
	@Override
	public List<String> placeBookingList(int placeNo, Date dates) {
	    return dao.placeBookingList(placeNo, dates);
	}
	
	// placeBook 정보 DB에 추가
	@Override
	public void insertPlaceBook(PlaceBook placeBook) {
		dao.insertPlaceBook(placeBook);
		
	}

	//no장소 상세보기
	@Override
	public PlaceBoard getPlaceDetail(int no, boolean isCount) {
			if(isCount) {
				dao.incrementReadCount(no);
			}
			return dao.getPlaceDetail(no);
	}

	@Override
	public int getPoint(String id) {
		return dao.getPoint(id);
	}
	
	//신청하기 누르면 Matching에 해당하는 Pay만큼 user의 point차감
	@Override
	public void updateUserPoint(String id, int updatedPoint) {
		dao.updateUserPoint(id, updatedPoint);
	      
	   }
	
}
