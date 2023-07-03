package com.springproject.dunk.mj.dao;

import java.util.List;

import com.springproject.dunk.mj.domain.Matching;
import com.springproject.dunk.mj.domain.MatchingApply;
import com.springproject.dunk.mj.domain.MatchingItem;

public interface MatchingDao {
	
	//selectedDate에 해당하는 게시글리스트 반환
	public abstract List<MatchingItem> matchingItemList(int startRow, int num, String selectedDate);
	
	//selectedDate에 해당하는 게시글을 반환
	public abstract int getMatchingCount(String selectedDate);
	
	//해당하는 no와 조회수
	public abstract MatchingItem getMatchingItem(int no, boolean isCount);
	
	//매칭최초글쓰기
	public void insertMatching(MatchingItem matchingItem);
	
	//매칭삭제
	public void deleteMatching(int no);
	
	//Matching에 MatchingApply 신청하기
	public void insertMatchingApply(MatchingApply matchingApply);
	
	//Matching에 해당하는 MatchingApply 수를 반환하는 메서드
	public abstract int getMatchingApplyCount(int matchingNo);

	//매칭에 지원시 포인트 불러오기
	public abstract int getPoint(String id);

	// 매칭 신청할때 해당 Matching의 pay 불러오기
	public abstract int getMatchingPay(int no);

	// 신청하기 누르면 Matching에 해당하는 Pay만큼 user의 point차감
	public void updateUserPoint(String id, int updatedPoint);

}
