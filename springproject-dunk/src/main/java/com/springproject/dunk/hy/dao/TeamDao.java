package com.springproject.dunk.hy.dao;

import java.util.List;

import com.springproject.dunk.hy.domain.Team;
import com.springproject.dunk.hy.domain.TeamUser;

public interface TeamDao {

	public void addTeam(Team team);
	
	public List<Integer> teamNoList(String id);
	
	public Team getTeam(int no);
	
	public void addTeamUser(int no, String id, String nick);
	
	public List<TeamUser> teamUserList(int no);
	
	public void deleteTeamUser(int no, String id);
	
	public void changeLeader(int no, String id, String nick);	
	
	public void updateTeam(Team team);
	
	public void deleteTeam(int no);
	
	public void deleteTeamAllUser(int no);
	
	public Team getTeamById(String id);
	
	public void updateTeamUser(int no, String id, String nick);	
	
	
}
