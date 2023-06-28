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
		
		// 회원의 기본 정보는 세션에 있으니까.. - 뷰에서 세션에 있는 걸 찍으면 되지만
		// 포인트는 어떻게? 없으니가.. 뷰로 가기전에 가져자야지? 
		// 여기서 세션에 있는 아이디를 가져와서  - 아이디에 해당하는 포인트를 조회하고 - 이걸 모델로 뷰로 보내 출력하면 되지 않을까?
		String id = (String) session.getAttribute("id");
		// 포인트 조회 메서드 - > Service - dao - mapper
		//int point = matchingService.getPoint(id);
		
		if(id != null) {
			int point = matchingService.getPoint(id);
			model.addAttribute("point", point);
		}
		// 모델에 담기
		//model.addAttribute("point", point);
		
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
	public String insertMatchingApply(HttpServletRequest request,
			MatchingApply matchingApply)throws IOException
	{
		
		//세션에서 아이디 가져옴
		//String userId = "";
		
		//아이디에 해당하는 예치금 읽어와서 참가비보다 적으면 알림 진행종료

		//예치금이 참가비보다 많으면 팀매치지원 테이블에 추가
		
		//마이페이지 캘린더에서 예약내역이 보이게 한다.
		
		matchingService.insertMatchingApply(matchingApply);
		
		
		return "redirect:/matchingList";
	}

}
