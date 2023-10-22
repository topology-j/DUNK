package com.springproject.dunk.mj.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;
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
import com.springproject.dunk.mj.domain.MatchingItem;
import com.springproject.dunk.mj.domain.MyApply;
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
	    
		Map<String, Object> modelMap = matchingService.matchingItemList(pageNum, selectedDate);

		model.addAllAttributes(modelMap);

		model.addAttribute("selectedDate", selectedDate);

		return "matching/matchingList";
	}



	
	//매칭디테일
	@RequestMapping("/matchingDetail")
	public String matchingDetail(Model model, int no, HttpSession session,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1")int pageNum, String  selectedDate) 
	throws Exception
	{
		//세션에있는 아이디 조회
		String id = (String) session.getAttribute("id");
		
		//회원가입이 아니어도 디테일 볼수있게 if 처리
		if(id != null) {
			int point = matchingService.getPoint(id);
			model.addAttribute("point", point);
		}
		
		//매칭에 지원한 MatchingApply 수
		int matchingApplyCount = matchingService.getMatchingApplyCount(no);
	    model.addAttribute("matchingApplyCount", matchingApplyCount);
	    
		MatchingItem matchingItem = matchingService.getMatchingItem(no, true);
		model.addAttribute("matchingItem", matchingItem);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("selectedDate", selectedDate);
		
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
		//세션에서 아이디 가져옴
		String id = (String) session.getAttribute("id");
		
		//사용자 포인트 내역 가져오기
		int point = matchingService.getPoint(id);
		
		// Matching 객체에서 매칭 참가비 가져오기
		int matchingPay = matchingService.getMatchingPay(matchingApply.getMatchingNo());
		
		// 사용자의 포인트에서 매칭 참가비 차감
		int updatedPoint = point - matchingPay;

		// 유저 포인트 업데이트
		matchingService.updateUserPoint(id, updatedPoint);

		// 매칭 신청 처리
		matchingService.insertMatchingApply(matchingApply);

		return "redirect:/matchingList";
	}
	
	//마이페이지
	//마이페이지 MyApply 조회내역
	@RequestMapping(value = "/myCalender", method=RequestMethod.GET)
	public String myApplyList(Model model, HttpSession session)
	{
		//세션에있는 아이디 조회
		String id = (String) session.getAttribute("id");
		
		if(id == null || id.trim().equals("")) {
	        return "redirect:/login"; // 로그인 페이지로 이동하도록 처리
	    }
		
		List<MyApply> myApplyList = matchingService.myApplyList(id);
		model.addAttribute("myApplyList", myApplyList);
		
		return "user/myCalender";
	}
	
	//마이페이지 MyApply 조회 상세내역
	@RequestMapping(value = "/myApplyDetail", method=RequestMethod.GET)
	public String myApplyDetail(Model model, int no, HttpSession session)throws Exception
	{
		//세션에있는 아이디 조회
		String id = (String) session.getAttribute("id");
		
		MyApply myApply = matchingService.getMyApply(no);
		model.addAttribute("myApply", myApply);
		
		return "user/myApplyDetail";
	}

}
