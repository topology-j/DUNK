package com.springproject.dunk.hy.service;

import java.util.List;

import com.springproject.dunk.hy.domain.Team;
import com.springproject.dunk.hy.domain.TeamUser;

public interface TeamService {

	public void addTeam(Team team);
	
	public List<Team> teamList(String id);
	
	public Team getTeam(int no);
	
	public List<TeamUser> teamUserList(int no);
	
	public void deleteTeamUser(int no, String id);
	
	public void addTeamUser(int no, String id, String nick);
	
	public void changeLeader(int no, String id, String nick);	
	
	public void updateTeam(Team team);
	
	public void deleteTeam(int no);
	
	public Team getTeamById(String id);
	
	public void updateTeamUser(int no, String id, String nick);	
	
	public List<TeamUser> getTeamUserList(String id);
	
	
}
