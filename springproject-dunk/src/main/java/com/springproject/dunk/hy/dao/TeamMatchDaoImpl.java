package com.springproject.dunk.hy.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproject.dunk.hy.domain.TeamMatch;
import com.springproject.dunk.hy.domain.TeamMatchUser;

@Repository
public class TeamMatchDaoImpl implements TeamMatchDao {

	private final String NAME_SPACE="com.springproject.dunk.mapper.TeamMatchMapper";
	
	private SqlSessionTemplate sqlSession;

	@Autowired
	public TeamMatchDaoImpl(SqlSessionTemplate sqlSession) {		
		this.sqlSession = sqlSession;
	}

	@Override
	public void addTeamMatch(TeamMatch tm) {
		sqlSession.insert(NAME_SPACE+".addTeamMatch", tm);		
	}

	@Override
	public void addTeamMatchUser(int bookNo, int teamNo, String userId) {
		
		Map<String, Object> params=new HashMap<>();
		
		params.put("bookNo", bookNo);
		params.put("teamNo", teamNo);
		params.put("userId", userId);
		
		sqlSession.insert(NAME_SPACE+".addTeamMatchUser", params);	
	}

	@Override
	public void addTeamMatchUserNick(int bookNo, int teamNo, String userId, String userNick) {
		
		Map<String, Object> params=new HashMap<>();
		
		params.put("bookNo", bookNo);
		params.put("teamNo", teamNo);
		params.put("userId", userId);
		params.put("userNick", userNick);
		
		sqlSession.update(NAME_SPACE+".addTeamMatchUserNick", params);			
	}

	@Override
	public List<TeamMatch> teamMatchList() {		
		return sqlSession.selectList(NAME_SPACE+".teamMatchList");
	}

	@Override
	public TeamMatch getTeamMatch(int no) {		
		return sqlSession.selectOne(NAME_SPACE+".getTeamMatch", no);
	}

	@Override
	public List<TeamMatchUser> teamMatchUserList(int no) {		
		return sqlSession.selectList(NAME_SPACE+".teamMatchUserList", no);
	}

	@Override
	public void updateTeamMatchProcess(int no) {
		sqlSession.update(NAME_SPACE+".updateTeamMatchProcess", no);		
	}

		
	
	
	
}
