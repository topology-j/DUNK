package com.springproject.dunk.ms.service;

import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.springproject.dunk.ms.dao.PlaceDao;
import com.springproject.dunk.ms.domain.Board;
import com.springproject.dunk.ms.domain.Reply;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import org.springframework.beans.factory.annotation.*;


@Service
public class PlaceServiceImpl implements PlaceService {

	private static final int PAGE_SIZE = 4; //한 페이지에 보여줄 게시글 수 
	private static final int PAGE_GROUP = 4; // 한페이지에 보여질 페이지 그룹 수
	
	@Autowired
	private PlaceDao dao;
	
	////////////////////////////////////////////////////////////////////////////////////////////////////
	//리스트가져오기
	@Override
	public Map<String, Object>placeList(int pageNum, String keyword, String area, String orderBy) {
		
		int currentPage = pageNum;
		int startRow = (currentPage - 1) * PAGE_SIZE;
		int listCount = 0;
		
		boolean searchOption = !keyword.equals("null"); 
		
		listCount = dao.getListPlaceCount(keyword, area, orderBy);
		System.out.println("listCount : " + listCount + ", keyword : " + keyword +", area :" + area + ", orderBy :" + orderBy);
			
			if(listCount>0) {
				List<Board> placeList = dao.placeList(startRow, PAGE_SIZE, keyword, area, orderBy);
	
			int pageCount = 
					listCount / PAGE_SIZE + (listCount % PAGE_SIZE == 0 ? 0 : 1);
			
			int startPage = (currentPage / PAGE_GROUP) * PAGE_GROUP + 1
					- (currentPage % PAGE_GROUP == 0 ? PAGE_GROUP : 0);
			
			int endPage = startPage + PAGE_GROUP -1;
				
			if(endPage > pageCount) {
				endPage = pageCount;
			}
			
			Map<String, Object> modelMap = new HashMap<String, Object>();
			modelMap.put("placeList", placeList);
			modelMap.put("pageCount", pageCount);
			modelMap.put("startPage", startPage);
			modelMap.put("endPage", endPage);
			modelMap.put("currentPage", currentPage);
			modelMap.put("listCount", listCount);
			modelMap.put("pageGroup", PAGE_GROUP);
			modelMap.put("searchOption", searchOption);
			
			if(searchOption) { /*검색 요청이면 type과 keyword를 모델에 저장한다.*/				
				modelMap.put("keyword", keyword);				
			}
			
			modelMap.put("area",  area);
			modelMap.put("orderBy", orderBy);
			return modelMap;			
	
		} else {
			
			return null;
		}
	}

	//no장소 상세보기
	@Override
	public Board getPlaceDetail(int no, boolean isCount) {
			if(isCount) {
				dao.incrementReadCount(no);
			}
				return dao.getPlaceDetail(no);
	}

	//장소 입력하기
	@Override
	public void placeInsert(Board board) {
		dao.placeInsert(board);
	}
	
	//no장소 수정한것 입력하기(no장소 수정폼 불러오기 없음)
	@Override
	public void placeUpdateProcess(Board board) {
		dao.placeUpdateProcess(board);
	}
	
	//no장소 삭제하기
	@Override
	public void placeDelete(int no) {
		dao.placeDelete(no);
	}
	
	//장소 추천 가져오기(DB에 업데이트된 추천수를 가져온다)
	@Override

	public Map<String, Integer> totalPlaceRecommend(int no, String recommend){
	
		dao.placeRecommendUpdate(no, recommend);
		Board board = dao.getPlaceRecommend(no);
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("recommend", board.getRecommend());
		map.put("thank",  board.getThank());
		
		return map;
}
	
	/////////////////////////////////////////////////////////////////////////////////////////
	//댓글/////////////////////////////////////////////////////////////////////////////////////
	@Override
	public List <Reply> placeReplyList(int no){
		return dao.placeReplyList(no);
	}
	//댓글추가
	@Override
	public void placeReplyAdd(Reply reply) {
		 dao.placeReplyAdd(reply);
		}
	//댓글수정
	public  void placeReplyUpdate(Reply reply) {
		dao.placeReplyUpdate(reply);
	}
		
	//댓글삭제
	public void placeReplyDelete(int no) {
		dao.placeReplyDelete(no);
	}
		
		

	
	
	
	
		
	/////////////////////////////////////////////////////////////////////////////////////////
	///	//카카오 로그인 api////////////////////////////////////////////////////////////////////
	public String getKakaoAccessToken (String authorize_code) {
		String access_Token = "";
		String refresh_Token = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder sb = new StringBuilder();
			sb.append("grant_type=authorization_code");
			sb.append("&client_id=4a2a32fedb5d7951ae324e2f02860ce7"); //본인이 발급받은 key
			sb.append("&redirect_uri=https://localhost:8080/redirect");
			
			// 본인이 설정한 주소
			sb.append("&code=" + authorize_code);
			bw.write(sb.toString());
			bw.flush();
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";
			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
			access_Token = element.getAsJsonObject().get("access_token").getAsString();
			refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();
			System.out.println("access_token : " + access_Token);
			System.out.println("refresh_token : " + refresh_Token);
			br.close();
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return access_Token;
	}
    
	public HashMap<String, Object> getUserInfo(String access_Token) {
		HashMap<String, Object> userInfo = new HashMap<String, Object>();
		String reqURL = "https://kapi.kakao.com/v2/user/me";
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Authorization", "Bearer " + access_Token);
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";
			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
			JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
			JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();
			String nickname = properties.getAsJsonObject().get("nickname").getAsString();
			String email = kakao_account.getAsJsonObject().get("email").getAsString();
			userInfo.put("nickname", nickname);
			userInfo.put("email", email);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return userInfo;
	}
	

}
