package com.springproject.dunk.hy.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.springproject.dunk.hy.domain.Team;
import com.springproject.dunk.hy.domain.TeamUser;

@Repository
public class TeamDaoImpl implements TeamDao {

	private final String NAME_SPACE="com.springproject.dunk.mapper.TeamMapper";
	
	private SqlSessionTemplate sqlSession;

	@Autowired	
	public TeamDaoImpl(SqlSessionTemplate sqlSession) {	
		this.sqlSession = sqlSession;
	}

	@Override
	public void addTeam(Team team) {
		sqlSession.insert(NAME_SPACE+".addTeam", team);		
	}

	@Override
	public List<Integer> teamNoList(String id) {		
		return sqlSession.selectList(NAME_SPACE+".teamNoList", id);
	}

	@Override
	public Team getTeam(int no) {		
		return sqlSession.selectOne(NAME_SPACE+".getTeam", no);
	}

	@Override
	public void addTeamUser(int no, String id, String nick) {
		
		Map<String, Object> params=new HashMap<>(); 
		
		params.put("no", no);
		params.put("id", id);
		params.put("nick", nick);
		
		sqlSession.insert(NAME_SPACE+".addTeamUser", params);		
	}

	@Override
	public List<TeamUser> teamUserList(int no) {		
		return sqlSession.selectList(NAME_SPACE+".teamUserList", no);
	}

	@Override
	public void deleteTeamUser(int no, String id) {
		
		Map<String, Object> params=new HashMap<>();
		
		params.put("no", no);
		params.put("id", id);
		
		sqlSession.delete(NAME_SPACE+".deleteTeamUser", params);		
	}

	@Override
	public void changeLeader(int no, String id, String nick) {
		
		Map<String, Object> params=new HashMap<>();
		
		params.put("no", no);
		params.put("id", id);
		params.put("nick", nick);
		
		sqlSession.update(NAME_SPACE+".changeLeader", params);		
	}

	@Override
	public void updateTeam(Team team) {
		sqlSession.update(NAME_SPACE+".updateTeam", team);
	}

	@Override
	public void deleteTeam(int no) {
		sqlSession.delete(NAME_SPACE+".deleteTeam", no);		
	}

	@Override
	public void deleteTeamAllUser(int no) {
		sqlSession.delete(NAME_SPACE+".deleteTeamAllUser", no);		
	}

	@Override
	public Team getTeamById(String id) {		
		return sqlSession.selectOne(NAME_SPACE+".getTeamById", id);
	}

	@Override
	public void updateTeamUser(int no, String id, String nick) {
		
		Map<String, Object> params=new HashMap<>();
		
		params.put("no", no);
		params.put("id", id);
		params.put("nick", nick);
		
		sqlSession.update(NAME_SPACE+".updateTeamUser", params);		
	}
	
	
	
}
