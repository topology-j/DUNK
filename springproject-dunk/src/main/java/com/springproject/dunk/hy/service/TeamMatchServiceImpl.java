package com.springproject.dunk.hy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.springproject.dunk.hy.dao.TeamMatchDao;
import com.springproject.dunk.hy.dao.UserDao;
import com.springproject.dunk.hy.domain.TeamMatch;
import com.springproject.dunk.hy.domain.TeamMatchUser;
import com.springproject.dunk.hy.domain.User;

@Service
public class TeamMatchServiceImpl implements TeamMatchService {

	private TeamMatchDao dao;
	private UserDao uDao;

	@Autowired
	public TeamMatchServiceImpl(TeamMatchDao dao, UserDao uDao) {		
		this.dao = dao;
		this.uDao = uDao;
	}

	@Override
	public void addTeamMatch(TeamMatch tm) {
		dao.addTeamMatch(tm);		
	}

	@Override
	public void addTeamMatchUser(int bookNo, int teamNo, String[] uList) {		
		
		for(int i=0; i<5; i++) {			
			dao.addTeamMatchUser(bookNo, teamNo, uList[i]);				
		}
		
	}

	@Override
	public void addTeamMatchUserNick(int bookNo, int teamNo, String[] uList) {
		
		for(int i=0; i<5; i++) {
			
			User u=uDao.getUser(uList[i]);			
			
			dao.addTeamMatchUserNick(bookNo, teamNo, u.getId(), u.getNickname());			
		}
		
	}

	@Override
	public List<TeamMatch> teamMatchList() {		
		return dao.teamMatchList();
	}

	@Override
	public TeamMatch getTeamMatch(int no) {		
		return dao.getTeamMatch(no);
	}

	@Override
	public List<TeamMatchUser> teamMatchUserList(int no) {		
		return dao.teamMatchUserList(no);
	}

	@Override
	public void updateTeamMatchProcess(int no) {
		dao.updateTeamMatchProcess(no);		
	}
	
	
	
}
