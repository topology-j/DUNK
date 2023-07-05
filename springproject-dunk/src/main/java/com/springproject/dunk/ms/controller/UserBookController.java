package com.springproject.dunk.ms.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.springproject.dunk.ch.domain.PlaceBook;
import com.springproject.dunk.ms.domain.UserBookList;
import com.springproject.dunk.ms.service.UserBookService;
import com.springproject.dunk.hy.domain.User;
import com.springproject.dunk.hy.service.UserService;



@Controller
public class UserBookController {

	private UserBookService ubservice;
	private UserService uservice;
	
	@Autowired
	public  UserBookController(UserBookService ubservice, UserService uservice) {
		this.ubservice = ubservice;
		this.uservice = uservice;
	}
	
	//농구장예약리스트를 모두불러오기
	@RequestMapping(value="/userPlaceList", method=RequestMethod.GET)
	public String getUserPlaceList(Model model, 
			@RequestParam(value="pageNum", required=false, defaultValue="1") int pageNum) throws Exception {	
		Map<String, Object> modelMap = ubservice.getUserPlaceList(pageNum);
		model.addAllAttributes(modelMap);
		return "place/userPlaceList";
	}	
	
	//아이디별로 농구장예약리스트를 마이페이지로 보내기
	@RequestMapping(value="/userPlace")
	public String getUserPlace(Model model, HttpSession session, String userId, 
			@RequestParam(value = "id", required = false, defaultValue = "null") String id,
			@RequestParam(value="pageNum", required=false, defaultValue="1") int pageNum ) throws Exception {
		
		// userId를 기반으로 사용자 장소 예약 정보를 조회
		Map<String, Object> userPlaceBook = ubservice.getUserPlace(userId);
		// 조회한 userPlaceBook 데이터를 모델에 추가
	    model.addAllAttributes(userPlaceBook);
	    // "place/userPlace"을 반환
	    return "place/userPlace";
	}

	
	
	
}
