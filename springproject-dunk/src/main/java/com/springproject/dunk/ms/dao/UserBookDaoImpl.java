package com.springproject.dunk.ms.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproject.dunk.ch.domain.PlaceBook;
import com.springproject.dunk.hy.domain.User;
import com.springproject.dunk.ms.domain.UserBookList;


@Repository
public class UserBookDaoImpl implements UserBookDao {

	private final String NAME_SPACE = "springstudy.teamproject.mapper.ms.UserBookMapper";
	
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	//농구장예약리스트를 모두불러오기
	@Override
	public List<PlaceBook> getUserPlaceList(int startRow, int num){
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("startRow", startRow);
		params.put("num", num);
		return sqlSession.selectList(NAME_SPACE+".getUserPlaceList", params);
	}
	
	//페이징처리 게시글 개수 세주는 메서드
	@Override
	public int getBoardCount() {
		return sqlSession.selectOne(NAME_SPACE + ".getBoardCount");
	}
	
	//아이디별로 예약리스트불러오기
	@Override
	public  List<UserBookList> getUserPlace(String userId){
		return sqlSession.selectList(NAME_SPACE+".getUserPlace", userId);
		 
	}
	
	
	
	
}
 