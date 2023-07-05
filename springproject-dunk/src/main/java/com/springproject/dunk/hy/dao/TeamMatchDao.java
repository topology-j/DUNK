package com.springproject.dunk.hy.dao;

import java.sql.Timestamp;
import java.util.List;

import com.springproject.dunk.hy.domain.TeamMatch;
import com.springproject.dunk.hy.domain.TeamMatchUser;
import com.springproject.dunk.hy.domain.TeamMatchUserEval;

public interface TeamMatchDao {

	public void addTeamMatch(TeamMatch tm);
	
	public void deleteTeamMatch(int tmNo);
	
	public void addTeamMatchUser(int bookNo, int teamNo, String placeName, Timestamp dates, String timeBook, String teamName, String userId);
	
	public void addTeamMatchUserNick(int bookNo, int teamNo, String userId, String userNick);
	
	public List<TeamMatch> teamMatchList();
	
	public TeamMatch getTeamMatch(int no);
	
	public TeamMatch getTeamMatch2(int bookNo);
	
	public List<TeamMatchUser> teamMatchUserList(int bookNo, int teamNo);	
	
	public void updateTeamMatchProcess(int no);
	
	public List<TeamMatchUser> teamMatchUserList(String id);
	
	public TeamMatch getTeamMatchById(String id);
	
	public void addTeamNo2(int bookNo, int TeamNo);
	
	public void updateTeamMatchUser(String id, int bookNo, String teamName);
	
	public List<TeamMatchUser> teamMatchUserListPartner(int teamNo, int bookNo);	
	
	public List<TeamMatchUser> teamMatchUserListFinal(int bookNo, String teamName);
	
	public void addTeamMatchUserEval(int bookNo, String userId, String partnerId);
	
	public List<TeamMatchUserEval> teamMatchUserEvalList(int bookNo);
	
	public void updateTeamMatchUserEval(int bookNo, String userId, String partnerId);
	
	public void updateTeamMatchUser(int bookNo, int teamNo, String userId);
	
	public void deleteTeamMatchUserEval(int bookNo, String userId);
	
}
