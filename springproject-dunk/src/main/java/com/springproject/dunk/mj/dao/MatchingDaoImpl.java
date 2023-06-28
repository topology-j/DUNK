package com.springproject.dunk.mj.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproject.dunk.mj.domain.Matching;
import com.springproject.dunk.mj.domain.MatchingApply;

@Repository
public class MatchingDaoImpl implements MatchingDao {
	
	private final String NAME_SPACE="com.springproject.dunk.mapper.mj.MatchingMapper";
	
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
	@Override
	public List<Matching> matchingList(int startRow, int num, String selectedDate) {
		
		//페이징처리~
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("startRow", startRow);
		params.put("num", num);
		params.put("selectedDate", selectedDate);
		
		return sqlSession.selectList(NAME_SPACE +".matchingList", params);
	}
	
	//페이징처리에 사용(모든 게시글 수 읽어오기)
	@Override
	public int getMatchingCount(String selectedDate) {
		//Map<String, String> params = new HashMap<String, String>();
		
		return sqlSession.selectOne(NAME_SPACE + ".getMatchingCount", selectedDate);
	}
	
	//no에 해당하는 디테일, 조회수
	@Override
	public Matching getMatching(int no, boolean isCount) {
		
		if(isCount) {
			sqlSession.update(NAME_SPACE + ".incrementReadCount", no);
		}
		return sqlSession.selectOne(NAME_SPACE+".getMatching", no);
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
	
	//매칭에 지원시 포인트 불러오기
	public int getPoint(String id) {
		return sqlSession.selectOne(NAME_SPACE +".getPoint", id);
	}


}
