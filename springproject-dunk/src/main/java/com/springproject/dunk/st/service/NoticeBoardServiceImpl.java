package com.springproject.dunk.st.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproject.dunk.st.dao.NoticeBoardDao;
import com.springproject.dunk.st.domain.NoticeBoard;
@Service
public class NoticeBoardServiceImpl implements NoticeBoardService {
	@Autowired
	private NoticeBoardDao noticeBoardDao;
	public void setNoticeBoardDao(NoticeBoardDao noticeBoardDao) {
		this.noticeBoardDao = noticeBoardDao;
	}
	@Override
	public List<NoticeBoard> noticeBoardList() {
		// TODO Auto-generated method stub
		return noticeBoardDao.noticeBoardList();
	}

	@Override
	public NoticeBoard getNoticeBoard(int no) {
		// TODO Auto-generated method stub
		return noticeBoardDao.getNoticeBoard(no);
	}
	
	@Override
	public void insertNoticeBoard(NoticeBoard noticeBoard) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateNoticeBoard(NoticeBoard noticeBoard) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteNoticeBoard(int no) {
		// TODO Auto-generated method stub

	}

}
