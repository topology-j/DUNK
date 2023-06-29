package com.springproject.dunk.hy.service;

import java.util.Map;

import com.springproject.dunk.hy.domain.TeamRecruitment;

public interface TeamRecruitmentService {
	
	public abstract Map<String, Object> teamRecruitmentList(int pageNum);
	
	public abstract TeamRecruitment getTeamRecruitment(int no);
	
	public abstract void insertTeamRecruitment(TeamRecruitment teamRecruitment);

	//public boolean isPassCheck(int no, String pass);

	public abstract void updateTeamRecruitment(TeamRecruitment teamRecruitment);

	public abstract void deleteTeamRecruitment(int no);

}
