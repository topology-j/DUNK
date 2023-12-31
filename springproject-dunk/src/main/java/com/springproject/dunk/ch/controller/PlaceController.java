package com.springproject.dunk.ch.controller;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springproject.dunk.ch.domain.PlaceBoard;
import com.springproject.dunk.ch.domain.PlaceBook;
import com.springproject.dunk.ch.service.PlaceService;

@Controller
public class PlaceController {
	
	private final static String DEFAULT_PATH = "/resources/placeUpload/";
	private PlaceService service;
	
	@Autowired
	public PlaceController(PlaceService service) {
		this.service = service;
	}
	
	// 장소 예약 약관 동의 창 이동
		 //@RequestMapping(value="/placeBookTerms", method=RequestMethod.POST) 
		 @RequestMapping(value="/placeBookTerms") 
		public String placeBookTermsProcess(Model model, PlaceBoard board, int no) {
		 //public String placeBookTermsProcess(Model model, PlaceBoard board, @RequestParam(name = "no", required=false, defaultValue="24")   int no) { 
			 PlaceBoard b1 = service.getPlaceDetail(no, false); 
			 model.addAttribute("b1", b1);
			 
		 
			 	return "placeBook/placeBookTerms"; 
			 }
		 
		 // 장소 예약 시간 창 이동
		@RequestMapping(value="/placeBookTime", method=RequestMethod.POST) 
		public String placeBookTimeProcess(Model model, int no) { 
			PlaceBoard b1 = service.getPlaceDetail(no, false);
			
			// 오늘 날짜 + 1일차로 할 것
			Calendar cal= Calendar.getInstance();
			cal.add(Calendar.DAY_OF_MONTH, 1);
			
			Date d = new Date(cal.getTimeInMillis());		
			List<String> placeBookingList = service.placeBookingList(no, d);
			
			model.addAttribute("b1", b1);
			model.addAttribute("placeBookingList", placeBookingList);
			
			
			return "placeBook/placeBookTime";			  
		}
		
		// DB에 장소 예약 완료된 시간 가져오기	 
		@RequestMapping(value="/placeBookingList", method=RequestMethod.POST) 
		@ResponseBody
		public List<String> placeBookingList(int no, Date selectedDate) {
			return service.placeBookingList(no, selectedDate);
		}
		
		// 장소 시간 선택 → 장소 예약 창 이동
		@RequestMapping(value="/placeBook", method=RequestMethod.POST ) 
		public String placeBookProcess(Model model, PlaceBoard board, int no, HttpSession session) { 
			
			// 모델에 담기
			String id = (String) session.getAttribute("id");		      
		    //사용자 포인트 내역 가져오기
			int point = service.getPoint(id);			
			    
			if(id != null) {				
			   	model.addAttribute("point", point);
			}
			
		    PlaceBoard b1 = service.getPlaceDetail(no, false); 
			model.addAttribute("b1", b1);
		    
			 return "placeBook/placeBook";
			 
		}
		
		 // placeBook DB에 정보 추가
		@RequestMapping(value = "/placeBookProcess", method=RequestMethod.POST)
		public String insertPlaceBook(PlaceBook placeBook,
				HttpSession session) {
			
			String id = (String) session.getAttribute("id");
			int point = service.getPoint(id);
			
		      // Matching 객체에서 매칭 참가비 가져오기
		      int PlacePay = service.getPlacePay(placeBook.getPlaceNo());
		      // 사용자의 포인트에서 매칭 참가비 차감
		      int updatedPoint = point - PlacePay;

		    // 유저 포인트 업데이트
			service.updateUserPoint(id, updatedPoint);
		
			service.insertPlaceBook(placeBook);
			
			return "redirect:placeList";
					
		}
		
		
		

	
}
