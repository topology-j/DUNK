package com.springproject.dunk.hy.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.springproject.dunk.hy.domain.Message;
import com.springproject.dunk.hy.domain.Profile;
import com.springproject.dunk.hy.domain.Team;
import com.springproject.dunk.hy.domain.User;
import com.springproject.dunk.hy.service.MessageService;
import com.springproject.dunk.hy.service.TeamService;
import com.springproject.dunk.hy.service.UserService;

@Controller
public class UserController {

	private final static String DEFAULT_PATH="/resources/userimage";	
	
	private UserService service;
	private MessageService mService;
	private TeamService tService;
	
	@Autowired
	public UserController(UserService service, MessageService mService, TeamService tService) {	
		this.service = service;
		this.mService = mService;
		this.tService = tService;		
	}

	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(String id, String pass, PrintWriter out, HttpServletResponse response, 
			HttpSession session, Model model) {
		
		int result=service.login(id, pass);
		
		if(result==-1) {
			response.setContentType("text/html; charset=utf-8");
			out.println("<script>");
			out.println("	alert('아이디가 존재하지 않습니다.');");
			out.println("	history.back();");
			out.println("</script>");
			
			return null;
			
		} else if(result==0) {
			response.setContentType("text/html; charset=utf-8");
			out.println("<script>");
			out.println("	alert('비밀번호가 틀렸습니다.');");
			out.println("	history.back();");
			out.println("</script>");	
			
			return null;		
		}
		
		User user=service.getUser(id);
		
		model.addAttribute("user", user);
		
		session.setAttribute("isLogin", true);
		session.setAttribute("id", id);
		session.setAttribute("nick", user.getNickname());
		session.setAttribute("grade", user.getGrade());
		
		return "redirect:eventList";	
		
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:eventList";
	}
	
	@RequestMapping("/overlapNickCheck")
	public String overlapNickCheck(String nickname, Model model) {
		
		boolean overlap = service.overlapNickCheck(nickname);
		
		model.addAttribute("nickname", nickname);
		model.addAttribute("overlap", overlap);		
		
		return "forward:/WEB-INF/views/user/overlapNickCheck.jsp";
	}
	
	@RequestMapping("/overlapIdCheck")
	public String overlapIdCheck(String id, Model model) {
		
		boolean overlap=service.overlapIdCheck(id);
		
		model.addAttribute("id", id);
		model.addAttribute("overlap", overlap);
		
		return "forward:/WEB-INF/views/user/overlapIdCheck.jsp";		
	}
	
	@RequestMapping("/joinResult")
	public String joinResult(User user, String pass1, String mobile1, String mobile2, String mobile3, 
			String emailId, 	String emailDomain, boolean isNickCheck, boolean isIdCheck, 
			PrintWriter out, HttpServletResponse response) {
		
		if(isNickCheck==false) {
			
			response.setContentType("text/html; charset=utf-8");
			out.println("<script>");
			out.println("	alert('닉네임 중복 확인을 해 주세요.');");
			out.println("	history.back();");
			out.println("</script>");
			
			return null;			
		}
		
		if(isIdCheck==false) {
			
			response.setContentType("text/html; charset=utf-8");
			out.println("<script>");
			out.println("	alert('아이디 중복 확인을 해 주세요.');");
			out.println("	history.back();");
			out.println("</script>");
			
			return null;			
		}
		
		BCryptPasswordEncoder passwordEncoder=new BCryptPasswordEncoder();
		String hashedPassword=passwordEncoder.encode(pass1);
				
		user.setPass(hashedPassword);
		user.setMobile(mobile1+"-"+mobile2+"-"+mobile3);
		user.setEmail(emailId+"@"+emailDomain);
		
		service.addUser(user);				
		
		return "redirect:loginForm";
		
	}
	
	@RequestMapping("/mypage")
	public String mypage(Model model, String id) {	
		
		User u=service.getUser(id);			
		
		model.addAttribute("u", u);
		
		if(u.getIsProfile() !=0) {			
			
			Profile p=service.getProfile(id);			
			model.addAttribute("p", p);
		}
		
		boolean newMessage=mService.isNewMessage(id);
		
		model.addAttribute("newMessage", newMessage);		
			
		return "user/mypage";
	}
	
	@RequestMapping("/profileForm")
	public String showProfile(String id, Model model) {
				
		model.addAttribute("id", id);
		
		return "user/profileForm";
	}
	
	@RequestMapping("/writeProfile")
	public String writeProfile(Profile p, String birth1, String birth2, String birth3, 
			HttpServletRequest request, 
			@RequestParam(value="file1", required=false) MultipartFile multipartFile) throws Exception {
		
		p.setBirth(birth1+"년 "+birth2+"월 "+birth3+"일");
								
		if(!multipartFile.isEmpty()) {			
			String filePath = request.getServletContext().getRealPath(DEFAULT_PATH);
			
			UUID uId = UUID.randomUUID();
			String saveName = uId.toString() + "_" + multipartFile.getOriginalFilename();			
			
			File file = new File(filePath, saveName);						
			
			multipartFile.transferTo(file);			
			
			p.setImg(saveName);			
		}	
		
		service.insertProfile(p);
		
		service.addProfile(p.getUserId());
		
		if(p.getImg() !=null) {
			
			service.addImg(p.getUserId());
			
		}
		
		return "redirect:mypage?id="+p.getUserId();
	}
			
	@RequestMapping("/profile")
	public String profile(String id, Model model) {
		
		User u=service.getUser(id);
		Profile p=service.getProfile(id);
		
		model.addAttribute("u", u);		
		model.addAttribute("p", p);
		
		return "user/profile";
	}
	
	
	@RequestMapping("/updateProfile")
	public String profileUpdate(String id, Model model) {
				
		Profile p=service.getProfile(id);
		
		model.addAttribute("p", p);		
		
		return "user/updateProfileForm";
	}
	
	@RequestMapping("/updateProfileProcess")	
	public String profileUpdateProcess(Profile p, String id, String img1, String defaultImg, 
			String birth1, String birth2, String birth3, HttpServletRequest request, 
			@RequestParam(value="file1", required=false) MultipartFile multipartFile) throws Exception {
		
		p.setUserId(id);
		p.setBirth(birth1+"년 "+birth2+"월 "+birth3+"일");		
		
		// 원래 이미지가 있다면 p에 담아라.
		if(img1 !=null) {
			p.setImg(img1);
		}
									
		if(!multipartFile.isEmpty()) {			
			String filePath = request.getServletContext().getRealPath(DEFAULT_PATH);
			
			UUID uId = UUID.randomUUID();
			String saveName = uId.toString() + "_" + multipartFile.getOriginalFilename();			
			
			File file = new File(filePath, saveName);				
			
			multipartFile.transferTo(file);			
			
			p.setImg(saveName);			
		}	
		
		User u=service.getUser(id);
		
		service.updateProfile(p);
		
		// 프로필은 있는데, 이미지는 없었고, 이번에 이미지를 새로 넣은 경우 => user의 profile_img+1
		if(u.getProfileImg()==0 && !p.getImg().equals("")) {
			
			service.addImg(p.getUserId());
			
		}
		
		if(defaultImg !=null) {
			service.minusImg(id);
		}
		
		return "redirect:profile?id="+p.getUserId();
	}
	
	@RequestMapping("/deleteProfile")
	public String deleteProfile(String id) {
								
		service.deleteProfile(id);
		
		return "redirect:mypage?id="+id;
	}
	
	@RequestMapping("/updateUser")
	public String updateUser(String id, Model model) {
		
		User u=service.getUser(id);
		
		model.addAttribute("u", u);
		
		return "user/updateUserForm";
	}
	
	@RequestMapping("/updateUserProcess")
	public String updateUserProcess(User u, String pass, 
			String mobile1, String mobile2, String mobile3, String emailId, 	String emailDomain, 
			boolean isNickCheck, PrintWriter out, HttpServletResponse response) {
		
		if(isNickCheck==false) {
			
			response.setContentType("text/html; charset=utf-8");
			out.println("<script>");
			out.println("	alert('닉네임 중복을 확인해 주세요.');");
			out.println("	history.back();");
			out.println("</script>");
			
			return null;			
		}		
		
		boolean isPassCheck=service.isPassCheck(u.getId(), pass);
		
		if(!isPassCheck) {
			
			response.setContentType("text/html; charset=utf-8");
			out.println("<script>");
			out.println("	alert('비밀번호를 확인해 주세요.');");
			out.println("	history.back();");
			out.println("</script>");
			
			return null;		
			
		}			
		
		u.setMobile(mobile1+"-"+mobile2+"-"+mobile3);
		u.setEmail(emailId+"@"+emailDomain);
		
		service.updateUser(u);
		
		Team t=tService.getTeamById(u.getId());
		
		tService.changeLeader(t.getNo(), u.getId(), u.getNickname());
		
		tService.updateTeamUser(t.getNo(), u.getId(), u.getNickname());
		
		return "redirect:mypage?id="+u.getId();
	}	
	
	@RequestMapping("/deleteUser")
	public String deleteUser(String id, HttpSession session) {
		
		service.deleteUser(id);
		
		session.invalidate();
		
		return "redirect:eventList";
	}
		
	@RequestMapping("/overlapNickCheck2")
	public String overlapNickCheck2(String nickname, Model model) {
		
		boolean overlap = service.overlapNickCheck(nickname);
		
		model.addAttribute("nickname", nickname);
		model.addAttribute("overlap", overlap);		
		
		return "forward:/WEB-INF/views/user/overlapNickCheck2.jsp";
	}
	
	@RequestMapping("/changePass")
	public String chagePass(String id, Model model) {	
		
		model.addAttribute("id", id);
		
		return "user/changePass";
	}	
	
	 @RequestMapping("/changePassProcess")
	 public String chagePassProcess(String id, String pass, String pass1, String pass2, 			 
			 PrintWriter out, HttpServletResponse response, Model model) {
		 
		 if(!service.isPassCheck(id, pass)) {
			 
			 response.setContentType("text/html; charset=utf-8");
			 out.println("<script>");
			 out.println("		alert('현재 비밀번호를 잘못 입력하셨습니다.');");
			 out.println("		history.back();");
			 out.println("</script>");
			 
			 return null;			 
		 }
		 
		 if(!pass1.equals(pass2)) {
			 
			 response.setContentType("text/html; charset=utf-8");
				out.println("<script>");
				out.println("	alert('새 비밀번호가 일치하지 않습니다.');");
				out.println("	history.back();");
				out.println("</script>");
				
				return null;				 
		 }
		 
		BCryptPasswordEncoder passwordEncoder=new BCryptPasswordEncoder();
		String hashedPassword=passwordEncoder.encode(pass1);		 
		 
		service.updatePass(id, hashedPassword);
		 
		User u=service.getUser(id);
		 
		 model.addAttribute("u", u);
		 
		 return "user/mypage";
	 }
	
	
	@RequestMapping("/mymanner")
	public String mymanner(String id, Model model) {
		
		List<String> eList=service.getManner(id);		
		
		model.addAttribute("eList", eList);		
		
		return "user/mymanner";
	}
	
	@RequestMapping("/messageList")
	public String messageList(String id, Model model, 
			@RequestParam(value="pageNum", required=false, defaultValue="1") int pageNum) {
		
		Map<String, Object> modelMap=mService.messageList(id, pageNum);
		
		model.addAllAttributes(modelMap);
		
		return "message/messageList";		
	}
	
	@RequestMapping("/messageDetail")
	public String messageDetail(int no, Model model, 
			@RequestParam(value="pageNum", required=false, defaultValue="1") int pageNum) {
		
		Message m=mService.getMessage(no);
		
		if(m.getReadMessage() ==0) {
			mService.addReadMessage(no);
		}
		
		model.addAttribute("m", m);
		model.addAttribute("pageNum", pageNum);		
		
		return "message/messageDetail";		
	}	
	
	@RequestMapping("/writeMessageForm")
	public String writeMessageForm() {
		return "message/writeMessageForm";
	}
	
	@RequestMapping("/writeMessageProcess")
	public String writeMessageProcess(Message m) {
		
		User u=service.getUserByNick(m.getReceiveNick());
		
		String receiveId=u.getId();
		
		m.setReceiveId(receiveId);
		
		mService.addMessage(m);		
		
		return "redirect:messageList?id="+m.getSendId();
	}
	
	@RequestMapping("/replyMessageForm")
	public String replyMessageForm(String sendId, String receiveId, 
			String sendNick, String receiveNick, Model model, 
			@RequestParam(value="pageNum", required=false, defaultValue="1") int pageNum) {
				
		model.addAttribute("sendId", sendId);
		model.addAttribute("receiveId", receiveId);
		model.addAttribute("sendNick", sendNick);
		model.addAttribute("receiveNick", receiveNick);
		model.addAttribute("pageNum", pageNum);
		
		return "message/replyMessageForm";
	}
	
	@RequestMapping("/replyMessageProcess")
	public String replyMessageProcess(Message message, 
			@RequestParam(value="pageNum", required=false, defaultValue="1") int pageNum) {		
		
		mService.addMessage(message);
		
		return "redirect:messageList?id="+message.getSendId()+"&pageNum="+pageNum;		
	}
	
	@RequestMapping("/deleteMessage")
	public String deleteMessage(int no, String id, 
			@RequestParam(value="pageNum", required=false, defaultValue="1") int pageNum) {
		
		mService.deleteMessage(no);
		
		return "redirect:messageList?id="+id+"&pageNum="+pageNum;
	}		
	
	
	
}
