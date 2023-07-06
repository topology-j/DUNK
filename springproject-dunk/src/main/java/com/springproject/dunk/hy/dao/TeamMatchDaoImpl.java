package com.springproject.dunk.hy.dao;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproject.dunk.hy.domain.TeamMatch;
import com.springproject.dunk.hy.domain.TeamMatchUser;
import com.springproject.dunk.hy.domain.TeamMatchUserEval;

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
	public void addTeamMatchUser(int bookNo, int teamNo, String placeName, Timestamp dates, String timeBook, String teamName, String userId) {
		
		Map<String, Object> params=new HashMap<>();
		
		params.put("bookNo", bookNo);
		params.put("teamNo", teamNo);
		params.put("placeName", placeName);
		params.put("teamName", teamName);
		params.put("dates", dates);
		params.put("timeBook", timeBook);
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
	public void addTeamNo2(int bookNo, int teamNo) {
		
		Map<String, Integer> params=new HashMap<>();
		
		params.put("bookNo", bookNo);
		params.put("teamNo", teamNo);
		
		sqlSession.update(NAME_SPACE+".addTeamNo2", params);		
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
	public List<TeamMatchUser> teamMatchUserList(int bookNo, int teamNo) {		
		
		Map<String, Integer> params=new HashMap<>();
		
		params.put("bookNo", bookNo);
		params.put("teamNo", teamNo);
				
		return sqlSession.selectList(NAME_SPACE+".teamMatchUserList1", params);
	}

	@Override
	public void updateTeamMatchProcess(int no) {
		sqlSession.update(NAME_SPACE+".updateTeamMatchProcess", no);		
	}

	@Override
	public List<TeamMatchUser> teamMatchUserList(String id) {		
		return sqlSession.selectList(NAME_SPACE+".teamMatchUserList2", id);
	}

	@Override
	public List<TeamMatch> getTeamMatchById(String id) {		
		return sqlSession.selectList(NAME_SPACE+".getTeamMatchById", id);
	}

	@Override
	public void updateTeamMatchUser(String id, int bookNo, String teamName) {
		
		Map<String, Object> params=new HashMap<>();
		
		params.put("id", id);
		params.put("bookNo", bookNo);
		params.put("teamName", teamName);
		
		sqlSession.update(NAME_SPACE+".updateTeamMatchUser", params);		
	}

	@Override
	public List<TeamMatchUser> teamMatchUserListPartner(int teamNo, int bookNo) {	
		
		Map<String, Object> params=new HashMap<>();
		
		params.put("teamNo", teamNo);
		params.put("bookNo", bookNo);
		
		return sqlSession.selectList(NAME_SPACE+".teamMatchUserListPartner", params);
	}

	@Override
	public List<TeamMatchUser> teamMatchUserListFinal(int bookNo, String teamName) {	
		
		Map<String, Object> params=new HashMap<>();
		
		params.put("bookNo", bookNo);
		params.put("teamName", teamName);
		
		return sqlSession.selectList(NAME_SPACE+".teamMatchUserListFinal", params);
	}

	@Override
	public void addTeamMatchUserEval(int bookNo, String userId, String partnerId) {
		
		Map<String, Object> params=new HashMap<>();
		
		params.put("bookNo", bookNo);
		params.put("userId", userId);
		params.put("partnerId", partnerId);
		
		sqlSession.insert(NAME_SPACE+".addTeamMatchUserEval", params);		
	}

	@Override
	public TeamMatch getTeamMatch2(int bookNo) {		
		return sqlSession.selectOne(NAME_SPACE+".getTeamMatch2", bookNo);
	}

	@Override
	public List<TeamMatchUserEval> teamMatchUserEvalList(int bookNo) {		
		return sqlSession.selectList(NAME_SPACE+".teamMatchUserEvalList", bookNo);
	}

	@Override
	public void updateTeamMatchUserEval(int bookNo, String userId, String partnerId) {
		
		Map<String, Object> params=new HashMap<>();
		
		params.put("bookNo", bookNo);
		params.put("userId", userId);
		params.put("partnerId", partnerId);
		
		sqlSession.update(NAME_SPACE+".updateTeamMatchUserEval", params);
	}

	@Override
	public void updateTeamMatchUser(int bookNo, int teamNo, String userId) {
		
		Map<String, Object> params=new HashMap<>();
		
		params.put("bookNo", bookNo);
		params.put("teamNo", teamNo);
		params.put("userId", userId);
		
		sqlSession.update(NAME_SPACE+".updateTeamMatchUser2", params);
	}

	@Override
	public void deleteTeamMatchUserEval(int bookNo, String userId) {
		
		Map<String, Object> params=new HashMap<>();
		
		params.put("bookNo", bookNo);		
		params.put("userId", userId);
		
		sqlSession.delete(NAME_SPACE+".deleteTeamMatchUserEval", params);		
	}

	@Override
	public void deleteTeamMatch(int tmNo) {
		sqlSession.delete(NAME_SPACE+".deleteTeamMatch", tmNo);		
	}

	
	


		
	
}
