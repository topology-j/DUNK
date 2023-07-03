package com.springproject.dunk.hy.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.springproject.dunk.hy.domain.Event;
import com.springproject.dunk.hy.domain.EventComment;
import com.springproject.dunk.hy.domain.Message;
import com.springproject.dunk.hy.service.EventService;
import com.springproject.dunk.hy.service.MessageService;

@Controller
public class EventController {
	
	private final static String DEFAULT_PATH = "/resources/eventimage/";

	private EventService service;	
	private MessageService mService;
	
	@Autowired	
	public EventController(EventService service, MessageService mService) {		
		this.service = service;
		this.mService = mService;
	}

	@RequestMapping("/eventList")
	public String eventList(Model model, 
			@RequestParam(value="pageNum", required=false, defaultValue="1") int pageNum, 
			@RequestParam(value="type", required=false, defaultValue="null") String type, 
			@RequestParam(value="keyword", required=false, defaultValue="null") String keyword) {
				
		Map<String, Object> modelMap=service.eventList(pageNum, type, keyword);
		
		model.addAllAttributes(modelMap);
				
		return "event/eventList";
	}
	
	@RequestMapping("/eventDetail")
	public String eventDetail(int no, Model model,  
			@RequestParam(value="pageNum", required=false, defaultValue="1") int pageNum, 
			@RequestParam(value="type", required=false, defaultValue="null") String type, 
			@RequestParam(value="keyword", required=false, defaultValue="null") String keyword) {
		
		Event event=service.getEvent(no, true);		
		
		List<EventComment> cList=service.commentList(no);
		
		boolean searchOption=type.equals("null") || keyword.equals("null") ? false : true;
				
		model.addAttribute("e", event);	
		model.addAttribute("pageNum", pageNum);		
		model.addAttribute("cList", cList);
		model.addAttribute("searchOption", searchOption);
		
		if(searchOption) {
			model.addAttribute("type", type);
			model.addAttribute("keyword", keyword);
		}
		
		return "event/eventDetail";
	}
	
	
	@RequestMapping("/eventWriteProcess")
	public String writeProcess(Event e, HttpServletRequest request, 
			@RequestParam(value="file1", required=false) MultipartFile multipartFile1, 
			@RequestParam(value="file2", required=false) MultipartFile multipartFile2) throws Exception {
				
		if(!multipartFile1.isEmpty()) {				
			
			String filePath = request.getServletContext().getRealPath(DEFAULT_PATH);						
				
			UUID uId = UUID.randomUUID();
			String saveName = uId.toString() + "_" + multipartFile1.getOriginalFilename();			
			
			File file = new File(filePath, saveName);
							
			multipartFile1.transferTo(file);		
			
			e.setTitleImg(saveName);			
		}
		
		if(!multipartFile2.isEmpty()) {				
			
			String filePath = request.getServletContext().getRealPath(DEFAULT_PATH);						
				
			UUID uId = UUID.randomUUID();
			String saveName = uId.toString() + "_" + multipartFile2.getOriginalFilename();			
			
			File file = new File(filePath, saveName);
							
			multipartFile2.transferTo(file);		
			
			e.setContentImg(saveName);					
		}			
		
		service.insertEvent(e);
		
		return "redirect:eventList";
	}
	
	@RequestMapping("/eventUpdate")
	public String updateEvent(int no, Model model, 
			@RequestParam(value="pageNum", required=false, defaultValue="1") int pageNum, 
			@RequestParam(value="type", required=false, defaultValue="null") String type, 
			@RequestParam(value="keyword", required=false, defaultValue="null") String keyword) {
		
		Event e=service.getEvent(no, false);
		
		boolean searchOption=type.equals("null") || keyword.equals("null") ? false : true;
				
		model.addAttribute("e", e);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("searchOption", searchOption);
		
		if(searchOption) {
			model.addAttribute("type", type);
			model.addAttribute("keyword", keyword);
		}
		
		return "event/eventUpdateForm";
	}
	
	@RequestMapping("/eventUpdateProcess")
	public String updateEvent(Event e, RedirectAttributes reAttrs, 
			@RequestParam(value="pageNum", required=false, defaultValue="1") int pageNum, 
			@RequestParam(value="type", required=false, defaultValue="null") String type, 
			@RequestParam(value="keyword", required=false, defaultValue="null") String keyword) {
		
		boolean searchOption=type.equals("null") || keyword.equals("null") ? false : true;
		
		reAttrs.addAttribute("pageNum", pageNum);
		reAttrs.addAttribute("searchOption", searchOption);
		
		if(searchOption) {
			reAttrs.addAttribute("type", type);
			reAttrs.addAttribute("keyword", keyword);
		}
		
		service.updateEvent(e);
		
		return "redirect:eventList";
	}
	
	@RequestMapping("/eventDelete")
	public String deleteEvent(int no, RedirectAttributes reAttrs, 
			@RequestParam(value="pageNum", required=false, defaultValue="1") int pageNum, 
			@RequestParam(value="type", required=false, defaultValue="null") String type, 
			@RequestParam(value="keyword", required=false, defaultValue="null") String keyword) {		
		
		service.deleteEvent(no);
		
		boolean searchOption=type.equals("null") || keyword.equals("null") ? false : true;
		
		reAttrs.addAttribute("pageNum", pageNum);
		reAttrs.addAttribute("searchOption", searchOption);
		
		if(searchOption) {
			reAttrs.addAttribute("type", type);
			reAttrs.addAttribute("keyword", keyword);
		}
		
		return "redirect:eventList";		
	}	
	
	@RequestMapping("/eventRecommend")
	public String recommend(int no, Model model, 
			@RequestParam(value="pageNum", required=false, defaultValue="1") int pageNum) {		
		
		service.recommend(no);
		
		Event e=service.getEvent(no, false);
		
		model.addAttribute("e", e);
		model.addAttribute("pageNum", pageNum);
			
		return "event/eventDetail";		
	}	
	
	@RequestMapping("/questionAboutEvent")
	public String questionAboutEvent(int no, String sendId, String sendNick, String receiveId, String receiveNick, Model model,  
			@RequestParam(value="pageNum", required=false, defaultValue="1") int pageNum, 
			@RequestParam(value="type", required=false, defaultValue="null") String type, 
			@RequestParam(value="keyword", required=false, defaultValue="null") String keyword) {
		
		boolean searchOption=type.equals("null") || keyword.equals("null") ? false : true;
		
		model.addAttribute("no", no);	
		model.addAttribute("sendId", sendId);	
		model.addAttribute("sendNick", sendNick);	
		model.addAttribute("receiveId", receiveId);	
		model.addAttribute("receiveNick", receiveNick);	
		model.addAttribute("pageNum", pageNum);		
		model.addAttribute("searchOption", searchOption);
		
		if(searchOption) {
			model.addAttribute("type", type);
			model.addAttribute("keyword", keyword);
		}		
		
		return "message/writeMessageForme";
	}
	
	@RequestMapping("/writeMessageProcesse")
	public String writeMessageProcesse(int no, Message message, RedirectAttributes reAttrs,  
			@RequestParam(value="pageNum", required=false, defaultValue="1") int pageNum, 
			@RequestParam(value="type", required=false, defaultValue="null") String type, 
			@RequestParam(value="keyword", required=false, defaultValue="null") String keyword) {
		
		mService.addMessage(message);
		
		boolean searchOption=type.equals("null") || keyword.equals("null") ? false : true;
		
		reAttrs.addAttribute("no", no);
		reAttrs.addAttribute("pageNum", pageNum);
		reAttrs.addAttribute("searchOption", searchOption);
		
		if(searchOption) {
			reAttrs.addAttribute("type", type);
			reAttrs.addAttribute("keyword", keyword);
		}
		
		return "redirect:eventDetail";
	}
	
}
