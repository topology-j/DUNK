package com.springproject.dunk.hy.service;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.springproject.dunk.hy.dao.TeamMatchDao;
import com.springproject.dunk.hy.dao.UserDao;
import com.springproject.dunk.hy.domain.TeamMatch;
import com.springproject.dunk.hy.domain.TeamMatchUser;
import com.springproject.dunk.hy.domain.TeamMatchUserEval;
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
	public void addTeamMatchUser(int bookNo, int teamNo, String placeName, Timestamp dates, String timeBook, String teamName, String[] uList) {		
		
		for(int i=0; i<5; i++) {			
			dao.addTeamMatchUser(bookNo, teamNo, placeName, dates, timeBook, teamName, uList[i]);				
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
	public void addTeamNo2(int bookNo, int teamNo) {
		dao.addTeamNo2(bookNo, teamNo);		
	}

	@Override
	public List<TeamMatch> teamMatchList() {					
		return 	dao.teamMatchList();
	}

	@Override
	public TeamMatch getTeamMatch(int no) {		
		return dao.getTeamMatch(no);
	}

	@Override
	public List<TeamMatchUser> teamMatchUserList(int bookNo, int teamNo) {		
		return dao.teamMatchUserList(bookNo, teamNo);
	}

	@Override
	public void updateTeamMatchProcess(int no) {
		dao.updateTeamMatchProcess(no);		
	}

	@Override
	public List<TeamMatchUser> teamMatchUserList(String id) {		
		return dao.teamMatchUserList(id);
	}

	@Override
	public TeamMatch getTeamMatchById(String id) {		
		return dao.getTeamMatchById(id);
	}

	@Override
	public void updateTeamMatchUser(List<TeamMatchUser> uList, int bookNo, String teamName) {		
		
		for(int i=0; i<uList.size(); i++) {		
			
			dao.updateTeamMatchUser(uList.get(i).getUserId(), bookNo, teamName);
			
		}
		
	}

	@Override
	public List<TeamMatchUser> teamMatchUserListPartner(int teamNo, int bookNo) {		
		return dao.teamMatchUserListPartner(teamNo, bookNo);
	}

	@Override
	public List<TeamMatchUser> teamMatchUserListFinal(int bookNo, String teamName) {		
		return dao.teamMatchUserListFinal(bookNo, teamName);
	}

	@Override
	public void addTeamMatchUserEval(List<TeamMatchUser> uList, List<TeamMatchUser> tmuList) {
		
		for(int i=0; i<uList.size(); i++) {
			
			for(int j=0; j<tmuList.size(); j++) {				
				dao.addTeamMatchUserEval(uList.get(i).getBookNo(), uList.get(i).getUserId(), tmuList.get(j).getUserId());						
			}			
		}
		
		for(int i=0; i<uList.size(); i++) {
			
			for(int j=0; j<uList.size(); j++) {
				
				if(uList.get(i).getUserId() !=uList.get(j).getUserId()) {					
					dao.addTeamMatchUserEval(uList.get(i).getBookNo(), uList.get(i).getUserId(), uList.get(j).getUserId());					
				}				
			}			
		}
		
		for(int i=0; i<tmuList.size(); i++) {
			
			for(int j=0; j<uList.size(); j++) {
				dao.addTeamMatchUserEval(tmuList.get(i).getBookNo(), tmuList.get(i).getUserId(), uList.get(j).getUserId());
			}			
		}
		
		for(int i=0; i<tmuList.size(); i++) {
			
			for(int j=0; j<tmuList.size(); j++) {
				
				if(tmuList.get(i).getUserId() !=tmuList.get(j).getUserId()) {					
					dao.addTeamMatchUserEval(tmuList.get(i).getBookNo(), tmuList.get(i).getUserId(), tmuList.get(j).getUserId());					
				}				
			}			
		}
		
	}

	@Override
	public TeamMatch getTeamMatch2(int bookNo) {
		return dao.getTeamMatch2(bookNo);
	}

	@Override
	public List<TeamMatchUserEval> teamMatchUserEvalList(int bookNo) {		
		return dao.teamMatchUserEvalList(bookNo);
	}

	@Override
	public void updateTeamMatchUserEval(int bookNo, String userId, String partnerId) {
		dao.updateTeamMatchUserEval(bookNo, userId, partnerId);		
	}

	@Override
	public void deleteTeamMatchUser(int bookNo, int teamNo, String userId) {
		dao.updateTeamMatchUser(bookNo, teamNo, userId);
		dao.deleteTeamMatchUserEval(bookNo, userId);
	}

	@Override
	public void deleteTeamMatch(int tmNo) {
		dao.deleteTeamMatch(tmNo);		
	}

		
}
