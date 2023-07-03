package com.springproject.dunk.mj.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.springproject.dunk.mj.domain.Matching;
import com.springproject.dunk.mj.domain.MatchingApply;
import com.springproject.dunk.mj.service.MatchingService;

@Controller
public class MatchingController {
	
	@Autowired
	private MatchingService matchingService;
	
	public void setMatchingService(MatchingService matchingService) {
		
		this.matchingService = matchingService;
		
	}
	
	//매칭리스트
	@RequestMapping(value = "/matchingList", method = RequestMethod.GET)
	public String matchingList(Model model,
       @RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum,
       @RequestParam(value = "selectedDate", required = false) String selectedDate)
	{
	    // 오늘 날짜
		Date today = new Date(System.currentTimeMillis());
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	    String todayDate = dateFormat.format(today);

	    if (selectedDate == null || selectedDate.isEmpty()) {
	        // selectedDate가 전달되지 않은 경우 오늘 날짜를 사용
	        selectedDate = todayDate;
	    }
	    
	    Map<String, Object> modelMap = matchingService.matchingList(pageNum, selectedDate);
	    
	    model.addAllAttributes(modelMap);
	    return "matching/matchingList";
	}



	
	//매칭디테일
	@RequestMapping("/matchingDetail")
	public String matchingDetail(Model model, int no, HttpSession session,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1")int pageNum) 
	throws Exception
	{
		//세션에있는 아이디 조회
		String id = (String) session.getAttribute("id");
		// 포인트 조회 메서드 - > Service - dao - mapper
		//int point = matchingService.getPoint(id);
		
		if(id != null) {
			int point = matchingService.getPoint(id);
			model.addAttribute("point", point);
		}
		// 모델에 담기
		//model.addAttribute("point", point);
		
		//매칭에 지원한 MatchingApply 수
		int matchingApplyCount = matchingService.getMatchingApplyCount(no);
	    model.addAttribute("matchingApplyCount", matchingApplyCount);
	    
		Matching matching = matchingService.getMatching(no, true);
		model.addAttribute("matching", matching);
		model.addAttribute("pageNum", pageNum);
		
		return "matching/matchingDetail";
	}
	
	//매칭최초 글쓰기
	@RequestMapping(value = "/matchingWriteProcess", method =RequestMethod.POST)
	public String insertMatching(HttpServletRequest request,
			Matching matching)throws IOException
	
	{	
		matchingService.insertMatching(matching);
		return "redirect:matchingList";
		
	}
	
	//매칭 글 삭제
	@RequestMapping(value ="/matchingDelete", method =RequestMethod.POST)
	public String deleteMatching(HttpServletResponse response, int no, RedirectAttributes reAttrs,
			@RequestParam(value="pageNum", required=false, defaultValue="1")int pageNum)throws Exception
	{
		
		matchingService.deleteMatching(no);
		reAttrs.addAttribute("pageNum", pageNum);
		return "redirect:/matchingList";
	}
	
	//매칭신청 matchingApply
	@RequestMapping(value="/matchingApply", method=RequestMethod.POST)
	public String insertMatchingApply(HttpServletRequest request, HttpSession session,
			MatchingApply matchingApply)throws IOException
	{
		
		//트랜젝션문제있음.
		
		//세션에서 아이디 가져옴
		String id = (String) session.getAttribute("id");
		
		//사용자 포인트 내역 가져오기
		int point = matchingService.getPoint(id);
		
		// 매칭 참가비 가져오기 //matchingApply에 pay추가수정??
	    //int matchingPay = matchingApply.matchingPay();
		
	    // 사용자의 포인트에서 매칭 참가비 차감
	    //int updatedPoint = point - matchingPay;
	    //matchingService.updateUserPoint(id, updatedPoint);
	    
		//매칭 신청 처리
		matchingService.insertMatchingApply(matchingApply);
		
		//매칭신청 성공시 알림
		request.setAttribute("msg", "매칭 신청이 처리되었습니다.");
		 
		return "redirect:/matchingList";
	}

}
