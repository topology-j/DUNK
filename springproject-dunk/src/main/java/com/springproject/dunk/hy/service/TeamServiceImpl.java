package com.springproject.dunk.hy.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproject.dunk.hy.dao.TeamDao;
import com.springproject.dunk.hy.domain.Team;
import com.springproject.dunk.hy.domain.TeamUser;

@Service
public class TeamServiceImpl implements TeamService {

	private TeamDao dao;
	
	@Autowired	
	public TeamServiceImpl(TeamDao dao) {	
		this.dao = dao;
	}

	@Override
	public void addTeam(Team team) {
		dao.addTeam(team);
		dao.addTeamUser(team.getNo(), team.getLeaderId(), team.getLeaderNick());		
	}

	@Override
	public List<Team> teamList(String id) {	
		
		List<Integer> nList=dao.teamNoList(id);		
		
		List<Team> tList=new ArrayList<>();
		
		for(int i=0; i<nList.size(); i++) {
			tList.add(dao.getTeam(nList.get(i)));			
		}
		
		return tList;
	}

	@Override
	public Team getTeam(int no) {		
		return dao.getTeam(no);
	}

	@Override
	public List<TeamUser> teamUserList(int no) {		
		return dao.teamUserList(no);
	}

	@Override
	public void deleteTeamUser(int no, String id) {
		dao.deleteTeamUser(no, id);		
	}

	@Override
	public void addTeamUser(int no, String id, String nick) {
		dao.addTeamUser(no, id, nick);		
	}

	@Override
	public void changeLeader(int no, String id, String nick) {
		dao.changeLeader(no, id, nick);		
	}

	@Override
	public void updateTeam(Team team) {
		dao.updateTeam(team);		
	}

	@Override
	public void deleteTeam(int no) {
		dao.deleteTeam(no);
		dao.deleteTeamAllUser(no);
	}

	@Override
	public Team getTeamById(String id) {		
		return dao.getTeamById(id);
	}

	@Override
	public void updateTeamUser(int no, String id, String nick) {
		dao.updateTeamUser(no, id, nick);		
	}

	@Override
	public List<TeamUser> getTeamUserList(String id) {		
		return dao.getTeamUserList(id);
	}

	

	
}
