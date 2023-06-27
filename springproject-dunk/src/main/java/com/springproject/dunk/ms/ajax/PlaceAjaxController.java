package com.springproject.dunk.ms.ajax;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springproject.dunk.ms.domain.Reply;
import com.springproject.dunk.ms.service.PlaceService;

@Controller
public class PlaceAjaxController {

	@Autowired
	PlaceService service;
	
	//장소추천
	@RequestMapping(value="/placeRecommend.ajax", method=RequestMethod.POST)
	@ResponseBody 
	public Map<String, Integer> totalPlaceRecommend(int no, String recommend){ 
		return service.totalPlaceRecommend(no, recommend);
	}
	
	//댓글추가
	@RequestMapping("/placeReplyAddProcess.ajax")
	@ResponseBody
	public List <Reply> placeReplyAdd(Reply reply){
		service.placeReplyAdd(reply);
		return service.placeReplyList(reply.getPlaceNo());
	}
	
	//댓글수정
	@RequestMapping("/placeReplyUpdateProcess.ajax")
	@ResponseBody
	public List <Reply> placeReplyUpdate(Reply reply){
		return service.placeReplyList(reply.getPlaceNo());
	}
	
	//댓글삭제
	@RequestMapping("/placeReplyDeleteProcess.ajax")
	@ResponseBody
	public List <Reply> placeReplyDelete(int no, int placeNo){
		service.placeReplyDelete(no);
		return service.placeReplyList(placeNo);
	}
	
	
}
