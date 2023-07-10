package com.springproject.dunk.st.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springproject.dunk.st.domain.NoticeBoard;
import com.springproject.dunk.st.service.NoticeBoardService;
@Controller
public class NoticeBoardController {
	@Autowired
	private NoticeBoardService noticeBoardService;
	public void setNoticeBoardService(NoticeBoardService noticeBoardService) {
		this.noticeBoardService = noticeBoardService;
	}
	@RequestMapping(value= {"noticeBoardList"}, method = RequestMethod.GET)
	public String noticeBoardList(Model model) {
		List<NoticeBoard> nList= noticeBoardService.noticeBoardList();
		model.addAttribute("nList",nList);
		return "notice/noticeBoardList";
	}
	@RequestMapping("/noticeBoardDetail")
	public String noticeBoardDetail(Model model, int no) {
		NoticeBoard noticeBoard = noticeBoardService.getNoticeBoard(no);
		model.addAttribute("noticeBoard",noticeBoard);
		return "/notice/noticeBoardDetail";
	}
}

