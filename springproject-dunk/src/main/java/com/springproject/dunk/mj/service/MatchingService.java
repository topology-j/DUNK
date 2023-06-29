package com.springproject.dunk.mj.service;

import java.util.Map;

import com.springproject.dunk.mj.domain.Matching;
import com.springproject.dunk.mj.domain.MatchingApply;

public interface MatchingService {
	
	public abstract Map<String, Object> matchingList(int pageNum, String selectedDate);
	
	//no에 해당하는 디테일, 조회수 
	public abstract Matching getMatching(int no,boolean isCount);
	
	//매칭최초글쓰기
	public abstract void insertMatching(Matching matching);
	
	//삭제나 업데이트에 필요한 글 no체크 (나중에 pass추가...?유저아이디...?)
	//public boolean isPassCheck(int no);
	
	//매칭 글 수정
	//public abstract void updateMatching(Matching matching);
	
	//매칭 글 삭제
	public abstract void deleteMatching(int no);
	
	//매칭에 지원 MatchingApply
	public abstract void insertMatchingApply(MatchingApply matchingApply);
	
	//매칭에 지원한 MatchingApply 수를 반환하는 메서드
	public abstract int getMatchingApplyCount(int matchingNo);
	
	//매칭 지원시 포인트 불러오기
	public abstract int getPoint(String id);
	
	//포인트 차감
	public abstract void updateUserPoint(String userId, int pay);

}
