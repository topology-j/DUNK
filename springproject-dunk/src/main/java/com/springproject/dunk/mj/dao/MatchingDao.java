package com.springproject.dunk.mj.dao;

import java.util.List;

import com.springproject.dunk.mj.domain.Matching;
import com.springproject.dunk.mj.domain.MatchingApply;

public interface MatchingDao {
	
	public abstract List<Matching> matchingList(int startRow, int num, String selectedDate);
	
	//selectedDate에 해당하는 게시글을 반환
	public abstract int getMatchingCount(String selectedDate);
	
	//해당하는 no와 조회수
	public abstract Matching getMatching(int no, boolean isCount);
	
	public void insertMatching(Matching matching);
	
	public void deleteMatching(int no);
	
	//Matching에 MatchingApply 신청하기
	public void insertMatchingApply(MatchingApply matchingApply);

	//매칭에 지원시 포인트 불러오기
	public abstract int getPoint(String id);
	

}
