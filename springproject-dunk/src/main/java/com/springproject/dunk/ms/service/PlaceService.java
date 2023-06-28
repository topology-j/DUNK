package com.springproject.dunk.ms.service;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.springproject.dunk.ms.domain.Board;
import com.springproject.dunk.ms.domain.Reply;

public interface PlaceService {
	//장소리스트 불러오기
	public abstract Map<String, Object>placeList(int pageNum, String keyword, String area, String orderBy);
	//no장소 상세보기A
	public abstract Board getPlaceDetail(int no, boolean isCount);
	//장소 입력하기
	public abstract void placeInsert(Board board);
	//장소 수정하기
	public abstract void placeUpdateProcess(Board board);
	//장소 삭제하기
	public abstract void placeDelete(int no);
	//업데이트된 추천수 가져오기
	public abstract Map<String, Integer> totalPlaceRecommend(int no, String recommend);
	
	///댓글/////////////////////////////////////////////////////////////////////////////////////////
	//댓글리스트
	public abstract List <Reply> placeReplyList(int no);
	//댓글추가
	public abstract void placeReplyAdd(Reply reply);
	//댓글수정
	public abstract void placeReplyUpdate(Reply reply);
	//댓글삭제
	public abstract void placeReplyDelete(int no);

	
	///그외/////////////////////////////////////////////////////////////////////////////////////////////
	public abstract String getKakaoAccessToken (String code);

	public abstract HashMap<String, Object> getUserInfo(String access_Token);
	

}
