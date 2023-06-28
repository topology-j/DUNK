
package com.springproject.dunk.ms.dao;

import java.util.List;

import com.springproject.dunk.ms.domain.Board;
import com.springproject.dunk.ms.domain.Reply;

public interface PlaceDao {
	//장소리스트 불러오기
	public abstract List <Board> placeList(int startRow, int num, String keyword, String area, String orderBy);
	//페이징처리에 필요한 메서드
	public abstract int getListPlaceCount(String keyword, String area, String orderBy);
	//no장소 상세보기
	public abstract Board getPlaceDetail(int no);
	//장소 입력하기
	public abstract void placeInsert(Board board);
	//장소 수정하기
	public void placeUpdateProcess(Board board);
	//장소 삭제하기
	public void placeDelete(int no);
	//장소 조회수 증가 
	public abstract void incrementReadCount(int no);
	//장소 추천 업데이트
	public abstract void placeRecommendUpdate(int no, String recommend);
	//저장된 추천수 가져오기
	public abstract Board getPlaceRecommend(int no);
	////////////////댓글
	public abstract List <Reply> placeReplyList(int no);
	//댓글추가
	public abstract void placeReplyAdd(Reply reply);
	//댓글수정
	public abstract void placeReplyUpdate(Reply reply);
	
	public abstract void placeReplyDelete(int no);

}
