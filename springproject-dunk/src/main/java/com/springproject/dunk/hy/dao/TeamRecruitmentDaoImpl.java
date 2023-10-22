package com.springproject.dunk.hy.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproject.dunk.hy.domain.TeamRecruitment;

@Repository
public class TeamRecruitmentDaoImpl implements TeamRecruitmentDao {
	
	private final String NAME_SPACE = "com.springproject.dunk.mapper.TeamRecruitmentMapper";
	
	private SqlSessionTemplate sqlSession;
		
	@Autowired
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<TeamRecruitment> teamRecruitmentList(int startRow, int num) {
		Map<String, Integer> params = new HashMap<String, Integer>();
		params.put("startRow", startRow);
		params.put("num", num);
		return sqlSession.selectList(NAME_SPACE + ".teamRecruitmentList", params);
	}
	@Override
	public int getTeamRecruitmentCount() {
		return sqlSession.selectOne(NAME_SPACE+ ".getTeamRecruitmentCount");
	}

	@Override
	public TeamRecruitment getTeamRecruitment(int no) {
		return sqlSession.selectOne(NAME_SPACE + ".getTeamRecruitment", no);
	}

	@Override
	public void insertTeamRecruitment(TeamRecruitment teamRecruitment) {
		sqlSession.insert(NAME_SPACE + ".insertTeamRecruitment", teamRecruitment);
	}

	//@Override
	//public String isPassCheck(int no, String pass) {	
		//return null;
	//}

	@Override
	public void updateTeamRecruitment(TeamRecruitment teamRecruitment) {
		sqlSession.update(NAME_SPACE + ".updateTeamRecruitment", teamRecruitment);
	}

	@Override
	public void deleteTeamRecruitment(int no) {
		sqlSession.delete(NAME_SPACE + ".deleteTeamRecruitment", no);

	}

	
	



}
