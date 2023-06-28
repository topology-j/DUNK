package com.springproject.dunk.ms.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproject.dunk.ms.domain.Board;
import com.springproject.dunk.ms.domain.Reply;

@Repository("pDao")
public class PlaceDaoImpl implements PlaceDao {

	private final String NAME_SPACE = "springstudy.teamproject.mapper.ms.BoardMapper";
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
////////////////////////////////////////////////////////////////////////////////////////////
	//장소리스트가져오기
	@Override
	public List<Board> placeList(int startRow, int num, String keyword, String area, String orderBy) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("startRow", startRow);
		params.put("num", num);
		params.put("keyword", keyword);
		params.put("area", area);
		params.put("orderBy", orderBy);
		System.out.println(", type : " + ", keyword : " + keyword +", area :" + area + ", orderBy :" + orderBy);
		
		return sqlSession.selectList(NAME_SPACE+".placeList", params);
	}
	
	//페이징처리 게시글 개수 세주는 매서드
	@Override
	public int getListPlaceCount(String keyword, String area, String orderBy) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("keyword", keyword);
		params.put("area", area);

		return sqlSession.selectOne(NAME_SPACE + ".getListPlaceCount", params);
	}
	
	//no에 해당하는 장소정보 불러오는 메서드
	@Override
	public Board getPlaceDetail(int no) {
		return sqlSession.selectOne(NAME_SPACE + ".getPlaceDetail", no);
	}
	
	//장소등록
	@Override
	public void placeInsert(Board board) {
		sqlSession.insert(NAME_SPACE + ".placeInsert", board);
		
	}
	//no수정한거 Board에 넣기
	@Override
	public void placeUpdateProcess(Board board) {
		sqlSession.update(NAME_SPACE + ".placeUpdateProcess", board);
	}
	//no 장소정보 삭제하기
	@Override
	public void placeDelete(int no) {
		sqlSession.delete(NAME_SPACE + ".placeDelete", no);
	}
	
	//조회수 늘리기
	@Override
	public void incrementReadCount(int no) {
		sqlSession.update(NAME_SPACE + ".incrementReadCount", no);
	}
	//장소 추천 업데이트
	@Override
	public void placeRecommendUpdate(int no, String recommend) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("no", no);
		params.put("recommend", recommend);
		sqlSession.update(NAME_SPACE + ".placeRecommendUpdate", params);
	}

	//저장된 추천수 가져오기
	@Override
	public Board getPlaceRecommend(int no) {
		return sqlSession.selectOne(NAME_SPACE + ".getPlaceRecommend", no);
	}
	//////////////
	//댓글리스트
	@Override
	public  List<Reply> placeReplyList(int no){
		return sqlSession.selectList(NAME_SPACE+".placeReplyList", no);
	}
	//댓글추가
	@Override
	public void placeReplyAdd(Reply reply) {
		 sqlSession.insert(NAME_SPACE+".placeReplyAdd", reply);
	}
	//댓글수정
	public void placeReplyUpdate(Reply reply) {
		sqlSession.update(NAME_SPACE+".updateReply", reply);
		
	}
	
	//댓글 삭제
	public void placeReplyDelete(int no) {
		sqlSession.delete(NAME_SPACE+".placeReplyDelete", no);
	}
	


	
	
	
}
