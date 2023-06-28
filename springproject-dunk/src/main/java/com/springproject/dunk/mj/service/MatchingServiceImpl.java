package com.springproject.dunk.mj.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproject.dunk.mj.dao.MatchingDao;
import com.springproject.dunk.mj.domain.Matching;
import com.springproject.dunk.mj.domain.MatchingApply;

@Service
public class MatchingServiceImpl implements MatchingService {
	
	//페이지에 보일 게시글 수
	private static final int PAGE_SIZE = 10;
	
	private static final int PAGE_GROUP = 5;
	
	@Autowired
	private MatchingDao matchingDao;
	
	public void setMatchingDao(MatchingDao matchingDao) {
		this.matchingDao = matchingDao;
	}
	
	
	@Override
	public Map<String, Object> matchingList(int pageNum, String selectedDate)
	{
		
		int currentPage = pageNum;
		int startRow = (currentPage -1) * PAGE_SIZE;
		
		int listCount = matchingDao.getMatchingCount(selectedDate);
		
		List<Matching> matchingList = matchingDao.matchingList(startRow, PAGE_SIZE, selectedDate);
		
		int pageCount =
				listCount / PAGE_SIZE + (listCount % PAGE_SIZE == 0 ? 0 : 1);
		
		int startPage = (currentPage / PAGE_GROUP) * PAGE_GROUP + 1
				- (currentPage % PAGE_GROUP == 0 ? PAGE_GROUP : 0);
		
		int endPage = startPage + PAGE_GROUP - 1;
		
		if(endPage > pageCount) {
			endPage = pageCount;
			}
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		modelMap.put("matchingList", matchingList);
		modelMap.put("listCount", listCount);
		modelMap.put("pageCount", pageCount);
		modelMap.put("startPage", startPage);
		modelMap.put("endPage", endPage);
		modelMap.put("currentPage", currentPage);
		modelMap.put("listCount", listCount);
		modelMap.put("pageGroup", PAGE_GROUP);
		
		
		return modelMap;
	}

	//no에 해당하는 디테일, 조회수 
	@Override
	public Matching getMatching(int no, boolean isCount) {
		
		return matchingDao.getMatching(no, isCount);
	}

	//매칭최초글쓰기
	@Override
	public void insertMatching(Matching matching) {
		matchingDao.insertMatching(matching);
		
	}

	//매칭글삭제
	@Override
	public void deleteMatching(int no) {
		matchingDao.deleteMatching(no);
		
	}

	//매칭에 지원하는 MatchingApply
	@Override
	public void insertMatchingApply(MatchingApply matchingApply) {
		matchingDao.insertMatchingApply(matchingApply);
		
	}

	//매칭 지원시 포인트 불러오기
	public  int getPoint(String id) {
		return matchingDao.getPoint(id);
	}

}
