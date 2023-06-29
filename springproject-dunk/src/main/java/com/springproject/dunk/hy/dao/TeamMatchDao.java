package com.springproject.dunk.hy.dao;

import java.util.List;

import com.springproject.dunk.hy.domain.TeamMatch;
import com.springproject.dunk.hy.domain.TeamMatchUser;

public interface TeamMatchDao {

	public void addTeamMatch(TeamMatch tm);
	
	public void addTeamMatchUser(int bookNo, int teamNo, String userId);
	
	public void addTeamMatchUserNick(int bookNo, int teamNo, String userId, String userNick);
	
	public List<TeamMatch> teamMatchList();
	
	public TeamMatch getTeamMatch(int no);
	
	public List<TeamMatchUser> teamMatchUserList(int no);
	
	public void updateTeamMatchProcess(int no);
}
