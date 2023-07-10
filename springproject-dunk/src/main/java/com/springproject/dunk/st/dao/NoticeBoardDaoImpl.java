package com.springproject.dunk.st.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproject.dunk.st.domain.NoticeBoard;
@Repository
public class NoticeBoardDaoImpl implements NoticeBoardDao {
	private final String NAME_SPACE = "com.springproject.dunk.mapper.st.NoticeBoardMapper";
	private SqlSessionTemplate sqlSession;
	@Autowired
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession=sqlSession;
	}
//	@Override
//	public String isPassCheck(int no, String pass) {
//		// TODO Auto-generated method stub
//		return null;
//	}

	@Override
	public List<NoticeBoard> noticeBoardList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAME_SPACE + ".noticeBoardList");
	}

	@Override
	public NoticeBoard getNoticeBoard(int no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAME_SPACE + ".getNoticeBoard", no);
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
