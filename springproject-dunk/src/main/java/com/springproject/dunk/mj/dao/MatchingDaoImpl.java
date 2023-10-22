package com.springproject.dunk.mj.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproject.dunk.mj.domain.Matching;
import com.springproject.dunk.mj.domain.MatchingApply;
import com.springproject.dunk.mj.domain.MatchingItem;
import com.springproject.dunk.mj.domain.MyApply;

@Repository
public class MatchingDaoImpl implements MatchingDao {
	
	private final String NAME_SPACE="com.springproject.dunk.mapper.mj.MatchingMapper";
	
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
	@Override
	public List<MatchingItem> matchingItemList(int startRow, int num, String selectedDate) {
		
		//페이징처리~
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("startRow", startRow);
		params.put("num", num);
		params.put("selectedDate", selectedDate);
		
		System.out.println("startRow : " + startRow);
		System.out.println("num : " + num);
		System.out.println("selectedDate : " + selectedDate);
		
		
		return sqlSession.selectList(NAME_SPACE +".matchingItemList", params);
	}
	
	//페이징처리에 사용(모든 게시글 수 읽어오기)
	@Override
	public int getMatchingCount(String selectedDate) {
		
		return sqlSession.selectOne(NAME_SPACE + ".getMatchingCount", selectedDate);
	}
	
	//no에 해당하는 디테일, 조회수
	@Override
	public MatchingItem getMatchingItem(int no, boolean isCount) {
		
		if(isCount) {
			sqlSession.update(NAME_SPACE + ".incrementReadCount", no);
		}
		return sqlSession.selectOne(NAME_SPACE+".getMatchingItem", no);
	}

	//Matching 최초 글쓰기
	@Override
	public void insertMatching(Matching matching) {
		sqlSession.insert(NAME_SPACE + ".insertMatching", matching);
		
	}

	//매칭 글 삭제
	@Override
	public void deleteMatching(int no) {
		sqlSession.delete(NAME_SPACE + ".deleteMatching", no);
		
	}

	//매칭에 지원하는 MatchingApply 
	@Override
	public void insertMatchingApply(MatchingApply matchingApply) {
		sqlSession.insert(NAME_SPACE + ".insertMatchingApply", matchingApply);
		
	}

	//Matching에 해당하는 MatchingApply 수를 반환하는 메서드
	@Override
	public int getMatchingApplyCount(int matchingNo) {
		return sqlSession.selectOne(NAME_SPACE + ".getMatchingApplyCount", matchingNo);
	}

	//결제
	// 매칭에 지원시 포인트 불러오기
	@Override
	public int getPoint(String id) {
		return sqlSession.selectOne(NAME_SPACE + ".getPoint", id);
	}

	// 매칭 신청할때 해당 Matching의 pay 불러오기
	@Override
	public int getMatchingPay(int no) {
		return sqlSession.selectOne(NAME_SPACE + ".getMatchingPay", no);
	}

	// 신청하기 누르면 Matching에 해당하는 Pay만큼 user의 point차감
	@Override
	public void updateUserPoint(String id, int updatedPoint) {
		Map<String, Object> params = new HashMap<>();
		params.put("id", id);
		params.put("updatedPoint", updatedPoint);
		sqlSession.update(NAME_SPACE + ".updateUserPoint", params);
	}


	//마이페이지
	//마이페이지 MyApply 조회내역
	@Override
	public List<MyApply> myApplyList(String userId) {
		return sqlSession.selectList(NAME_SPACE + ".myApplyList", userId);
	}

	//마이페이지 MyApply 조회 상세내역
	@Override
	public MyApply getMyApply(int no) {
		return sqlSession.selectOne(NAME_SPACE+".getMyApply", no);
	}

}
