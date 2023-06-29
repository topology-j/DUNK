package com.springproject.dunk.hy.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproject.dunk.hy.dao.TeamRecruitmentDao;
import com.springproject.dunk.hy.domain.TeamRecruitment;

@Service
public class TeamRecruitmentServiceImpl implements TeamRecruitmentService {
	
	private static final int PAGE_SIZE = 10;
	
	private static final int PAGE_GROUP = 10;

	@Autowired
	private TeamRecruitmentDao teamRecruitmentDao;
	
	public void setTeamRecruitmentDao(TeamRecruitmentDao teamRecruitmentDao) {
		this.teamRecruitmentDao = teamRecruitmentDao;
	}
	
	@Override
	public Map<String, Object> teamRecruitmentList(int pageNum) {
		
		int currentPage = pageNum;
		
		int startRow = (currentPage - 1) * PAGE_SIZE;
		
		int listCount = teamRecruitmentDao.getTeamRecruitmentCount();
		
		List<TeamRecruitment> teamRecruitmentList = teamRecruitmentDao.teamRecruitmentList(startRow, PAGE_SIZE);
		
		int pageCount =	listCount / PAGE_SIZE + (listCount % PAGE_SIZE == 0 ? 0 : 1);
		
		int startPage = (currentPage / PAGE_GROUP) * PAGE_GROUP + 1	- (currentPage % PAGE_GROUP == 0 ? PAGE_GROUP : 0);
		
		int endPage = startPage + PAGE_GROUP - 1;
		
		if(endPage > pageCount) {
			endPage = pageCount;
			}
		Map<String,Object>modelMap= new HashMap<String, Object>();
		
		modelMap.put("teamRecruitmentList", teamRecruitmentList);
		modelMap.put("pageCount", pageCount);
		modelMap.put("startPage", startPage);
		modelMap.put("endPage", endPage);
		modelMap.put("currentPage", currentPage);
		modelMap.put("listCount", listCount);
		modelMap.put("pageGroup", PAGE_GROUP);
		
		return modelMap;
	}

	@Override
	public TeamRecruitment getTeamRecruitment(int no) {
		return teamRecruitmentDao.getTeamRecruitment(no);

	}

	@Override
	public void insertTeamRecruitment(TeamRecruitment teamRecruitment) {
		teamRecruitmentDao.insertTeamRecruitment(teamRecruitment);

	}

	//@Override
	//public boolean isPassCheck(int no, String pass) {
		//return false;
	//}

	@Override
	public void updateTeamRecruitment(TeamRecruitment teamRecruitment) {
		teamRecruitmentDao.updateTeamRecruitment(teamRecruitment);

	}

	@Override
	public void deleteTeamRecruitment(int no) {
		teamRecruitmentDao.deleteTeamRecruitment(no);

	}


}
