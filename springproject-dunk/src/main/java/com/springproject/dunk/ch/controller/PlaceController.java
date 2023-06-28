package com.springproject.dunk.ch.controller;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springproject.dunk.ch.domain.Board;
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
		 public String placeBookTermsProcess(Model model, Board board, @RequestParam(name = "no", required=false, defaultValue="24")   int no) { 
			 Board b1 = service.getPlaceDetail(no, false); 
			 model.addAttribute("b1", b1);
			 
		 
			 	return "placeBook/placeBookTerms"; 
			 }
		 
		 // 장소 예약 시간 창 이동
		@RequestMapping(value="/placeBookTime", method=RequestMethod.POST) 
		public String placeBookTimeProcess(Model model, int no) { 
			Board b1 = service.getPlaceDetail(no, false);
			
			// 오늘 날짜 + 1일차로 할 것
			Calendar cal= Calendar.getInstance();
			cal.add(Calendar.DAY_OF_MONTH, 1);
			
			Date d = new Date(cal.getTimeInMillis());		
			List<String> placeBookingList = service.placeBookingList(no, d);
			
			model.addAttribute("b1", b1);
			model.addAttribute("placeBookingList", placeBookingList);
			
			
			return "placeBook/placeBookTime";			  
		}
				 
		@RequestMapping(value="/placeBookingList", method=RequestMethod.POST) 
		@ResponseBody
		public List<String> placeBookingList(int no, Date selectedDate) {
			return service.placeBookingList(no, selectedDate);
		}
		
		
		// 장소 예약 창 이동
		@RequestMapping(value="/placeBook", method=RequestMethod.POST) 
		public String placeBookProcess(Model model, Board board, int no) { 
			Board b1 = service.getPlaceDetail(no, false); 
			model.addAttribute("b1", b1);

			 return "placeBook/placeBook"; 
		}
		 // 
		@RequestMapping(value = "/placeBookProcess", method=RequestMethod.POST)
		public String insertPlaceBook(PlaceBook placeBook) {
			
			service.insertPlaceBook(placeBook);
			
			return "redirect:placeList";
					
		}
	
}
