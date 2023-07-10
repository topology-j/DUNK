package com.springproject.dunk.st.service;

import java.util.List;

import com.springproject.dunk.st.domain.NoticeBoard;

public interface NoticeBoardService {
	public abstract List<NoticeBoard> noticeBoardList();
	public abstract NoticeBoard getNoticeBoard(int no);
	public abstract void insertNoticeBoard(NoticeBoard noticeBoard);
	public abstract void updateNoticeBoard(NoticeBoard noticeBoard);
	public abstract void deleteNoticeBoard(int no);
}
