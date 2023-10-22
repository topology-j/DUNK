package com.springproject.dunk.hy.dao;

import java.util.List;

import com.springproject.dunk.hy.domain.TeamRecruitment;

public interface TeamRecruitmentDao {
	
	public abstract List<TeamRecruitment> teamRecruitmentList(int startRow, int num);
	
	public abstract int getTeamRecruitmentCount();
			
	public abstract TeamRecruitment getTeamRecruitment(int no);
	
	public abstract void insertTeamRecruitment(TeamRecruitment teamRecruitment);

	// public String isPassCheck(int no, String pass); // 패스 체크를 할 비밀번호가 없다 일단 생략 
	
	public abstract void updateTeamRecruitment(TeamRecruitment teamRecruitment);
	
	public abstract void deleteTeamRecruitment(int no);


}
