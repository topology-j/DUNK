package com.springproject.dunk.ms.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.springproject.dunk.ms.domain.Board;
import com.springproject.dunk.ms.domain.Reply;
import com.springproject.dunk.ms.service.PlaceService;
import com.springproject.dunk.hy.service.*;

@Controller("pController")
public class PlaceController {
	
	private final static String DEFAULT_PATH = "/resources/placeUpload/";
	private PlaceService service;
	
	@Autowired
	public PlaceController(PlaceService service) {
		this.service = service;
	}
		
	//장소리스트
	@RequestMapping({"/placeList", "/listPlace"})
	public String placeList(Model model,
			@RequestParam(value="pageNum", required=false, defaultValue="1") int pageNum,
			@RequestParam(value="keyword", required=false, defaultValue="null") String keyword,
			@RequestParam(value="area", required=false, defaultValue="All") String area,
			@RequestParam(value="orderBy", required=false, defaultValue="no") String orderBy) throws Exception {
		
		Map<String, Object> modelMap = service.placeList(pageNum, keyword, area, orderBy);
		model.addAllAttributes(modelMap);
		
		
	
		return "place/placeList";
	}
	
	
	//C:\developmentTool\spring3\workplace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\teamproject01\resources\placeUpload
	//no place 상세정보 가져오기
	@RequestMapping("/placeDetail")
	public String getPlaceDetail(Model model, int no, 
			@RequestParam(value="pageNum", required=false, defaultValue="1") int pageNum,
			@RequestParam(value="keyword", required=false, defaultValue="null") String keyword,
			@RequestParam(value="area", required=false, defaultValue="null") String area,
			@RequestParam(value="orderBy", required=false, defaultValue="no") String orderBy,
			@RequestParam(value="placeNo", required=false, defaultValue="1") String placeNo) throws Exception {

		boolean searchOption = (keyword.equals("null")) ? false : true; 
		
		if(searchOption) {
			model.addAttribute("keyword", keyword);
		}
		
		Board board1 = service.getPlaceDetail(no, true);
		List <Reply> placeReplyList=service.placeReplyList(no);
		
		model.addAttribute("b1", board1);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("searchOption", searchOption);
		model.addAttribute("replyList", placeReplyList);
		
			
		return "place/placeDetail";
	}
	
	//장소입력폼 (name, zipcode, address1, address2, area, image)
	@RequestMapping(value="/placeWriteProcess", method=RequestMethod.POST)
	public String placeInsert(HttpServletRequest request, String name, String zipcode, String address1, String address2, String area, 
			@RequestParam(value="images", required=false) List <MultipartFile> images) throws IOException {

		Board board = new Board();
		board.setName(name);
		board.setZipcode(zipcode);
		board.setAddress1(address1);
		board.setAddress2(address2);
		board.setArea(area);	
		
		//for(MultipartFile multipartFile : multipartFiles) {
		for(int i=0; i < images.size(); i++) {
		
			MultipartFile multipartFile =images.get(i);
			
			if(!multipartFile.isEmpty()) { // 업로드된 파일 데이터가 존재하면
				
				System.out.println("originName : " + multipartFile.getOriginalFilename());
				System.out.println("name : " + multipartFile.getName());
				
				String filePath = 
						request.getServletContext().getRealPath(DEFAULT_PATH);
		
				UUID uid = UUID.randomUUID();
				String saveName = uid.toString() + "_" + multipartFile.getOriginalFilename();
				File file = new File(filePath, saveName);
				System.out.println("placeInsert - newName : " + file.getName());
				System.out.println("절대경로" + file.getAbsolutePath());
				multipartFile.transferTo(file);
				
				if(i == 0) {
					board.setImage1(saveName);
				}
				else if(i == 1) {
					board.setImage2(saveName);
				}
				else if(i == 2) {
					board.setImage3(saveName);
				}
				else if(i == 3) {
					board.setImage4(saveName);
				}
			}
		}
		
	service.placeInsert(board);
	System.out.println("insert No : " + board.getNo());
	
	return "redirect:placeList";
}

	//updateForm에서 수정입력하고 > redirect:list요청
	@RequestMapping(value="placeUpdateProcess", method=RequestMethod.POST)
	public String placeUpdateProcess(HttpServletRequest request, HttpServletResponse response, PrintWriter out, RedirectAttributes reAttrs, 
													Board board, int no, String image1, String image2, String image3, String image4, 
												@RequestParam(value="pageNum", required=false, defaultValue="1")int pageNum,
												@RequestParam(value="keyword", required=false, defaultValue="null") String keyword,
												@RequestParam(value="area", required=false, defaultValue="All") String area,
												@RequestParam(value="orderBy", required=false, defaultValue="no") String orderBy,
												@RequestParam(value="images", required=false) List <MultipartFile> images) throws Exception {
		
		boolean searchOption = (keyword.equals("null")) ? false : true;
		
		if(searchOption) {
			reAttrs.addAttribute("keyword", keyword);
		
		}

		// 원래 이미지가 있다면 객체에 담기
		if(image1 !=null) {
			board.setImage1(image1);
		}
		if(image2 !=null) {
			board.setImage2(image1);
		}
		if(image3 !=null) {
			board.setImage3(image1);
		}
		if(image4 !=null) {
			board.setImage4(image1);
		}
		
		//for(MultipartFile multipartFile : multipartFiles) {
		for(int i=0; i < images.size(); i++) {
			
			MultipartFile multipartFile =images.get(i);
			
			if(!multipartFile.isEmpty()) { // 업로드된 파일 데이터가 존재하면
				
				System.out.println("originName : " + multipartFile.getOriginalFilename());
				System.out.println("name : " + multipartFile.getName());
				
				String filePath = 
						request.getServletContext().getRealPath(DEFAULT_PATH);
		
				UUID uid = UUID.randomUUID();
				String saveName = uid.toString() + "_" + multipartFile.getOriginalFilename();
				File file = new File(filePath, saveName);
				System.out.println("placeInsert - newName : " + file.getName());
				System.out.println("절대경로" + file.getAbsolutePath());
				multipartFile.transferTo(file);
				
				if(i == 0) {
					board.setImage1(saveName);
				}
				else if(i == 1) {
					board.setImage2(saveName);
				}
				else if(i == 2) {
					board.setImage3(saveName);
				}
				else if(i == 3) {
					board.setImage4(saveName);
				}
			}
		}
		
		service.placeUpdateProcess(board);
		reAttrs.addAttribute("pageNum", pageNum);
		reAttrs.addAttribute("searchOption", searchOption);
		
		return "redirect:placeList";
	}

	//detail > updateForm요청 
	@RequestMapping(value="/getPlaceUpdateForm", method=RequestMethod.POST)
	public String placeUpdateForm(HttpServletResponse response, Model model, Board board, int no, 
			@RequestParam(value="pageNum", required=false, defaultValue="1") int pageNum,
			@RequestParam(value="keyword", required=false, defaultValue="null") String keyword,
			@RequestParam(value="area", required=false, defaultValue="All") String area,
			@RequestParam(value="orderBy", required=false, defaultValue="no") String orderBy,
			@RequestParam(value="images", required=false) List <MultipartFile> images) throws Exception {
		
		boolean searchOption = (keyword.equals("null")) ? false : true;
		
		if(searchOption) {
			model.addAttribute("keyword", keyword);
		}

		Board b1 = service.getPlaceDetail(no, false);// 하나의정보 가져오기
		// int number = Integer.parseInt(str);
		model.addAttribute("b1", b1);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("searchOption", searchOption);
	
		return "place/placeUpdateForm";
	}
	
	//장소삭제
	@RequestMapping(value="placeDeleteProcess", method=RequestMethod.POST)
	public String placeDelete(HttpServletResponse response, PrintWriter out, Board board,  int no, RedirectAttributes reAttrs, 
											@RequestParam(value="pageNum", required=false, defaultValue="1")int pageNum,
											@RequestParam(value="keyword", required=false, defaultValue="null") String keyword,
											@RequestParam(value="area", required=false, defaultValue="All") String area,
											@RequestParam(value="orderBy", required=false, defaultValue="no") String orderBy,
											@RequestParam(name = "placeNo", required=false, defaultValue="1") Integer placeNo) throws Exception {
	
	boolean searchOption = (keyword.equals("null")) ? false : true;
		
		if(searchOption) {
			reAttrs.addAttribute("keyword", keyword);
		}

		service.placeDelete(no);
		reAttrs.addAttribute("pageNum", pageNum);	
		reAttrs.addAttribute("searchOption", searchOption);
		
		return "redirect:placeList";
	}

	
	
	//카카오 로그인 api
	// https://velog.io/@ohjs813/Spring-%EC%B9%B4%EC%B9%B4%EC%98%A4-%EB%A1%9C%EA%B7%B8%EC%9D%B8-REST-API
	@RequestMapping(value="/kakaoLogin", method=RequestMethod.GET)
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code) throws Exception {
		System.out.println("#########" + code);
		String access_Token = service.getKakaoAccessToken(code);
		HashMap<String, Object> userInfo = service.getUserInfo(access_Token);
		System.out.println("###access_Token#### : " + access_Token);
		System.out.println("###nickname#### : " + userInfo.get("nickname"));
		System.out.println("###email#### : " + userInfo.get("email"));
		return "kakao";
    	}
	
	
		
		
}
