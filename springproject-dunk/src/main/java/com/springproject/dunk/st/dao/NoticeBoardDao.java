package com.springproject.dunk.st.dao;

import java.util.List;

import com.springproject.dunk.st.domain.NoticeBoard;

public interface NoticeBoardDao {
	public abstract List<NoticeBoard> noticeBoardList();
	public abstract NoticeBoard getNoticeBoard(int no);
	public abstract void insertNoticeBoard(NoticeBoard noticeBoard);
	//public String isPassCheck(int no, String pass);
	public abstract void updateNoticeBoard(NoticeBoard noticeBoard);
	public abstract void deleteNoticeBoard(int no);
}
