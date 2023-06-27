package com.springproject.dunk.hy.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springproject.dunk.hy.service.EventService;

@Controller
public class EventController {	
	
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
		
	
}
