package com.springproject.dunk.hy.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.springproject.dunk.hy.domain.Event;
import com.springproject.dunk.hy.domain.EventComment;
import com.springproject.dunk.hy.service.EventService;

@Controller
public class EventController {
	
	private final static String DEFAULT_PATH = "/resources/eventimage/";

	private EventService service;
	
	@Autowired
	public EventController(EventService service) {	
		this.service = service;
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
		
		List<String> imgList=service.getImages(no);
		
		List<EventComment> cList=service.commentList(no);
		
		boolean searchOption=type.equals("null") || keyword.equals("null") ? false : true;
				
		model.addAttribute("e", event);	
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("iList", imgList);
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
			@RequestParam(value="file1", required=false) List<MultipartFile> imgFiles) throws Exception {
				
		if(!imgFiles.isEmpty()) {			
			
			e.setImgFileNames(new ArrayList<String>());
			
			String filePath = request.getServletContext().getRealPath(DEFAULT_PATH);
			
			for(int i=0; i<imgFiles.size(); i++) {				
				
				UUID uId = UUID.randomUUID();
				String saveName = uId.toString() + "_" + imgFiles.get(i).getOriginalFilename();			
				
				File file = new File(filePath, saveName);
								
				imgFiles.get(i).transferTo(file);			
				
				e.getImgFileNames().add(saveName);				
			}			
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
		
		return "redirect:eventList?";
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
		
		return "redirect:eventList?pageNum="+pageNum;		
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
	
	
}
