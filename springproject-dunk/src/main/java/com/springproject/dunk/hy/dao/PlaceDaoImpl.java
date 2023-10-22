package com.springproject.dunk.hy.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproject.dunk.ch.domain.PlaceBook;

@Repository("pDaoImpl")
public class PlaceDaoImpl implements PlaceDao {

	private final String NAME_SPACE="com.springproject.dunk.mapper.PlaceBookMapper";
	
	private SqlSessionTemplate sqlSession;

	@Autowired
	public PlaceDaoImpl(SqlSessionTemplate sqlSession) {		
		this.sqlSession = sqlSession;
	}

	@Override
	public List<PlaceBook> placeBookList(String id) {		
		return sqlSession.selectList(NAME_SPACE+".placeBookList", id);
	}

	@Override
	public PlaceBook getPlaceBook(int no) {		
		return sqlSession.selectOne(NAME_SPACE+".getPlaceBook", no);
	}
	
	
	
}
