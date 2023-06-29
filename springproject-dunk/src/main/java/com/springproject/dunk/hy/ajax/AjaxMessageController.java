package com.springproject.dunk.hy.ajax;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springproject.dunk.hy.domain.EventComment;
import com.springproject.dunk.hy.service.EventService;

@Controller
public class AjaxMessageController {

	private EventService service;

	@Autowired	
	public AjaxMessageController(EventService service) {	
		this.service = service;
	}

	@RequestMapping("/eventCommentWrite.ajax")
	@ResponseBody
	public List<EventComment> addEventComment(EventComment ec) {
		
		service.addEventComment(ec);
		
		return service.commentList(ec.getEventNo());
	}
	
	
	
	
}
