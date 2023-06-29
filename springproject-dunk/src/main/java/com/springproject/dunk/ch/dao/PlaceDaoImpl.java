package com.springproject.dunk.ch.dao;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproject.dunk.ch.domain.PlaceBoard;
import com.springproject.dunk.ch.domain.PlaceBook;
@Repository
public class PlaceDaoImpl implements PlaceDao {

	private final String NAME_SPACE = "springstudy.teamproject.mapper.ch.BoardMapper";
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
////////////////////////////////////////////////////////////////////////////////////////////

	// 장소 시간 선택 완료 번호 가져오기
	@Override
	public List<String> placeBookingList(int placeNo, Date dates) {
		Map<String, Object> params = new HashMap<>();
	    params.put("placeNo", placeNo);
	    params.put("dates", dates);
	   
	    
	    return sqlSession.selectList(NAME_SPACE + ".getBookDate", params);
	}
	// placeBook 정보 DB에 추가
	@Override
	public void insertPlaceBook(PlaceBook placeBook) {
		sqlSession.insert(NAME_SPACE + ".insertPlaceBook", placeBook);		
	}


	//no에 해당하는 장소정보 불러오는 메서드
	@Override
	public PlaceBoard getPlaceDetail(int no) {
		return sqlSession.selectOne(NAME_SPACE + ".getPlaceDetail", no);
	}	
	
	//조회수 늘리기
	@Override
	public void incrementReadCount(int no) {
		sqlSession.update(NAME_SPACE + ".incrementReadCount", no);
	}

	@Override
	public int getPoint(String id) {
		return sqlSession.selectOne(NAME_SPACE + ".getPoint", id);
	}

	@Override
	public void updateUserPoint(String id, int updatedPoint) {
		Map<String, Object> params = new HashMap<>();
	       params.put("id", id);
	       params.put("updatedPoint", updatedPoint);
	       sqlSession.update(NAME_SPACE + ".updateUserPoint", params);
	}
}
