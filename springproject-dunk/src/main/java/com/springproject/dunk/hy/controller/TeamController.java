package com.springproject.dunk.hy.controller;

import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.springproject.dunk.ch.domain.PlaceBook;
import com.springproject.dunk.hy.domain.Message;
import com.springproject.dunk.hy.domain.Profile;
import com.springproject.dunk.hy.domain.Team;
import com.springproject.dunk.hy.domain.TeamMatch;
import com.springproject.dunk.hy.domain.TeamMatchUser;
import com.springproject.dunk.hy.domain.TeamRecruitment;
import com.springproject.dunk.hy.domain.TeamUser;
import com.springproject.dunk.hy.domain.User;
import com.springproject.dunk.hy.service.MessageService;
import com.springproject.dunk.hy.service.PlaceService;
import com.springproject.dunk.hy.service.TeamMatchService;
import com.springproject.dunk.hy.service.TeamRecruitmentService;
import com.springproject.dunk.hy.service.TeamService;
import com.springproject.dunk.hy.service.UserService;

@Controller
public class TeamController {

	private TeamService service;
	private TeamRecruitmentService trService;
	private MessageService mService;
	private UserService uService;
	private PlaceService pService;
	private TeamMatchService tmService;

	@Autowired
	public TeamController(TeamService service, TeamRecruitmentService trService, MessageService mService,
			UserService uService, PlaceService pService, TeamMatchService tmService) {
		this.service = service;
		this.trService = trService;
		this.mService = mService;
		this.uService = uService;
		this.pService = pService;
		this.tmService = tmService;
	}

	@RequestMapping("/generateTeamForm")
	public String generateTeamForm(String id, String nick, Model model) {

		model.addAttribute("id", id);
		model.addAttribute("nick", nick);

		return "team/generateTeamForm";

	}

	@RequestMapping("/myteamList")
	public String addTeam(String id, Team team, Model model) {

		if (team.getName() != null) {
			service.addTeam(team);
		}

		List<Team> tList = service.teamList(id);
		model.addAttribute("tList", tList);

		return "team/myteamList";
	}

	@RequestMapping("/teamDetail")
	public String teamDetail(int no, Model model) {

		Team team = service.getTeam(no);

		List<TeamUser> uList = service.teamUserList(no);

		model.addAttribute("t", team);
		model.addAttribute("uList", uList);

		return "team/teamDetail";
	}

	@RequestMapping(value = { "/teamRecruitmentList", "/teamrecruitmentlist" }, method = RequestMethod.GET)
	public String teamRecruitmentList(Model model,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum) {

		Map<String, Object> modelMap = trService.teamRecruitmentList(pageNum);

		model.addAllAttributes(modelMap);

		return "teamRecruitment/teamRecruitmentList";
	}

	@RequestMapping("/teamRecruitmentDetail")
	public String teamRecruitmentDetail(Model model, int no) {
		TeamRecruitment teamRecruitment = trService.getTeamRecruitment(no);
		model.addAttribute("teamRecruitment", teamRecruitment);

		return "teamRecruitment/teamRecruitmentDetail";
	}

	@RequestMapping("/teamRecruitmentWrite")
	public String teamRecruitmentWrite(Model model, int no) {

		Team team = service.getTeam(no);

		model.addAttribute("t", team);

		return "teamRecruitment/teamRecruitmentWrite";
	}

	@RequestMapping(value = "/teamRecruitmentWriteProcess", method = RequestMethod.POST)
	public String insertTeamRecruitment(TeamRecruitment teamRecruitment) {
		trService.insertTeamRecruitment(teamRecruitment);
		return "redirect:teamRecruitmentList";
	}

	@RequestMapping(value = "/teamRecruitmentUpdateProcess")
	public String updateTeamRecruitment(Model model, HttpServletResponse response, PrintWriter out, int no) {

		TeamRecruitment teamRecruitment = trService.getTeamRecruitment(no);

		model.addAttribute("teamRecruitment", teamRecruitment);

		return "teamRecruitment/teamRecruitmentUpdate";
	}

	@RequestMapping(value = "/teamRecruitmentUpdateProcess", method = RequestMethod.POST)
	public String updateTeamRecruitment(HttpServletResponse response, TeamRecruitment teamRecruitment) {
		trService.updateTeamRecruitment(teamRecruitment);
		return "redirect:teamRecruitmentList";
	}

	@RequestMapping({ "/delete", "deleteTeamRecruitment" })
	public String deleteTeamRecruitment(HttpServletResponse response, PrintWriter out, int no) {

		trService.deleteTeamRecruitment(no);

		return "redirect:teamRecruitmentList";

	}

	@RequestMapping("/writeMessagetr")
	public String writeMessagetr(String receiveId, String receiveNick, int no, Model model) {

		model.addAttribute("receiveId", receiveId);
		model.addAttribute("receiveNick", receiveNick);
		model.addAttribute("no", no);

		return "message/writeMessageFormtr";
	}

	@RequestMapping("/writeMessageProcesstr")
	public String writeMessageProcesstr(Message message, int no) {

		mService.addMessage(message);

		return "redirect:teamRecruitmentDetail?no=" + no;
	}

	@RequestMapping("/deleteTeamUser")
	public String deleteTeamUser(int no, String id) {

		service.deleteTeamUser(no, id);

		return "redirect:teamDetail?no=" + no;

	}

	@RequestMapping("/leaveTeam")
	public String leaveTeam(int no, String id, Model model) {

		Team team = service.getTeam(no);

		if (team.getLeaderId().equals(id)) {

			List<TeamUser> uList = service.teamUserList(no);

			model.addAttribute("t", team);
			model.addAttribute("uList", uList);

			return "team/teamUserList";
		}

		service.deleteTeamUser(no, id);

		return "redirect:myteamList?id=" + id;

	}

	@RequestMapping("/leaveTeamLeader")
	public String leaveTeamLeader(int no, String id, String leaderId, PrintWriter out, HttpServletResponse response) {

		try {
			if (leaderId.equals(null))
				;

		} catch (NullPointerException e) {

			response.setContentType("text/html; charset=utf-8");
			out.println("<script>");
			out.println("	alert('새로운 팀장을 선택해 주세요.');");
			out.println("	history.back();");
			out.println("</script>");

			return null;
		}

		User u = uService.getUser(leaderId);

		service.changeLeader(no, leaderId, u.getNickname());

		service.deleteTeamUser(no, id);

		return "redirect:myteamList?id=" + id;
	}

	@RequestMapping("/addTeamUser")
	public String addTeamUser(int no, String nick, PrintWriter out, HttpServletResponse response) {

		Team t = service.getTeam(no);

		List<TeamUser> uList = service.teamUserList(no);

		if (uList.size() < t.getPeopleNum()) {

			User u = uService.getUserByNick(nick);

			service.addTeamUser(no, u.getId(), nick);

		} else {

			response.setContentType("text/html; charset=utf-8");
			out.println("<script>");
			out.println("	alert('팀원은 정원을 초과할 수 없습니다.');");
			out.println("	history.back();");
			out.println("</script>");

			return null;
		}
		return "redirect:teamDetail?no=" + no;
	}

	@RequestMapping("/writeMessageFormtd")
	public String writeMessageFormtd(String sendId, String receiveId, String sendNick, String receiveNick, int no,
			Model model) {

		model.addAttribute("sendId", sendId);
		model.addAttribute("receiveId", receiveId);
		model.addAttribute("sendNick", sendNick);
		model.addAttribute("receiveNick", receiveNick);
		model.addAttribute("no", no);

		return "message/writeMessageFormtd";
	}

	@RequestMapping("/writeMessageProcesstd")
	public String writeMessageProcesstd(Message message, int no) {

		mService.addMessage(message);

		return "redirect:teamDetail?no=" + no;
	}

	@RequestMapping("/updateTeam")
	public String updateTeam(int no, Model model) {

		Team t = service.getTeam(no);

		model.addAttribute("t", t);

		return "team/updateTeamForm";
	}

	@RequestMapping("/updateTeamProcess")
	public String updateTeamProcess(Team team) {

		service.updateTeam(team);

		return "redirect:teamDetail?no=" + team.getNo();
	}

	@RequestMapping("/deleteTeam")
	public String deleteTeam(int no, String id) {

		service.deleteTeam(no);

		return "redirect:myteamList?id=" + id;
	}

	@RequestMapping("/teamMatchCandidate")
	public String myBookPlace(String id, Model model) {

		List<PlaceBook> pList = pService.placeBookList(id);
		List<Team> tList = service.teamList(id);

		model.addAttribute("pList", pList);
		model.addAttribute("tList", tList);

		return "teamMatch/teamMatchCandidate";
	}

	@RequestMapping("/choiceTeamUser")
	public String choiceTeamUser(int bookNo, int teamNo, Model model) {

		List<TeamUser> uList = service.teamUserList(teamNo);

		Team t = service.getTeam(teamNo);

		model.addAttribute("bookNo", bookNo);
		model.addAttribute("teamNo", teamNo);
		model.addAttribute("uList", uList);
		model.addAttribute("t", t);

		return "teamMatch/choiceTeamUser";
	}

	@RequestMapping("/teamMatchWriteForm")
	public String teamMatchWriteForm(int bookNo, int teamNo, String[] userId, PrintWriter out,
			HttpServletResponse response, Model model) {

		if (userId.length != 5) {
			response.setContentType("text/html; charset=utf-8");
			out.println("<script>");
			out.println("	alert('팀원 5명을 선택해 주세요.');");
			out.println("	history.back();");
			out.println("</script>");

			return null;
		}

		tmService.addTeamMatchUser(bookNo, teamNo, userId);

		tmService.addTeamMatchUserNick(bookNo, teamNo, userId);

		PlaceBook pb = pService.getPlaceBook(bookNo);
		Team t = service.getTeam(teamNo);

		model.addAttribute("pb", pb);
		model.addAttribute("t", t);

		return "teamMatch/teamMatchWriteForm";
	}

	@RequestMapping("/addTeamMatch")
	public String addTeamMatch(TeamMatch tm, int bookNo, int teamNo) {

		PlaceBook pb = pService.getPlaceBook(bookNo);

		tm.setBookNo(bookNo);		
		
		tm.setDate(new Timestamp(pb.getDates().getTime()));
		tm.setTime(pb.getTimeBook());
		tm.setProcess("신청가능");

		tmService.addTeamMatch(tm);

		return "redirect:teamMatchList";
	}

	
	  @RequestMapping("/teamMatchList") 
	  public String teamMatchList(Model model) {
	  
	  List<TeamMatch> tList=tmService.teamMatchList();
	  
	  model.addAttribute("tList", tList);
	  
	  return "teamMatch/teamMatchList"; }
	  
	  @RequestMapping("/teamMatchDetail")
	  public String teamMatchDetail(int no, Model model) {		  
		  
		  TeamMatch tm=tmService.getTeamMatch(no);
		  
		  PlaceBook pb=pService.getPlaceBook(tm.getBookNo());
		  
		  User u=uService.getUser(tm.getWriterId());
		  
		  Team t=service.getTeam(tm.getTeamNo());
		  
		  List<TeamMatchUser> tuList=tmService.teamMatchUserList(tm.getBookNo());
		  
		  Profile p=uService.getProfile(tm.getWriterId());
		  
		  model.addAttribute("tm", tm);
		  model.addAttribute("pb", pb);
		  model.addAttribute("p", p);
		  model.addAttribute("u", u);
		  model.addAttribute("t", t);
		  model.addAttribute("tuList", tuList);
		  
		  return "teamMatch/teamMatchDetail";		  
	  }
	  
	  @RequestMapping("/writeMessageFormtm")
		public String writeMessageFormtm(String sendId, String receiveId, String sendNick, String receiveNick, int no,
				Model model) {

			model.addAttribute("sendId", sendId);
			model.addAttribute("receiveId", receiveId);
			model.addAttribute("sendNick", sendNick);
			model.addAttribute("receiveNick", receiveNick);
			model.addAttribute("no", no);

			return "message/writeMessageFormtm";
		}
	  
	  @RequestMapping("/writeMessageProcesstm")
		public String writeMessageProcesstm(Message message, int no) {

			mService.addMessage(message);

			return "redirect:teamMatchDetail?no=" + no;
		}
	  
	  @RequestMapping("/applyTeamMatch")
	  public String applyTeamMatch(String id, int bookNo, int tmNo, Model model) {
		  
		  List<Team> tList=service.teamList(id);
		  
		  model.addAttribute("tList", tList);
		  model.addAttribute("bookNo", bookNo);
		  model.addAttribute("tmNo", tmNo);
		  
		  return "teamMatch/myteamList";
	  }
	  
	  @RequestMapping("/choiceTeamMatchUser")
	  public String choiceTeamMatchUser(int teamNo, int bookNo, int tmNo, Model model) {
		  
		  Team t = service.getTeam(teamNo);
		  
		  List<TeamUser> uList = service.teamUserList(teamNo);
		  
		  model.addAttribute("t", t);
		  model.addAttribute("uList", uList);
		  model.addAttribute("bookNo", bookNo);
		  model.addAttribute("tmNo", tmNo);
		  
		  return "teamMatch/choiceTeamUserToApply";
	  }
	  
	  @RequestMapping("/completeApplyTeamMatch")
	  public String completeApplyTeamMatch(int bookNo, int teamNo, int tmNo, String[] userId, 
			  PrintWriter out, HttpServletResponse response, Model model) {		  
		  
			if (userId.length != 5) {
				response.setContentType("text/html; charset=utf-8");
				out.println("<script>");
				out.println("	alert('팀원 5명을 선택해 주세요.');");
				out.println("	history.back();");
				out.println("</script>");

				return null;
			}

			tmService.addTeamMatchUser(bookNo, teamNo, userId);

			tmService.addTeamMatchUserNick(bookNo, teamNo, userId);
			
			tmService.updateTeamMatchProcess(tmNo);
			
			return "redirect:teamMatchList";
	  }	  
	 

}
