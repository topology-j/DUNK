package com.springproject.dunk.hy.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.springproject.dunk.hy.dao.UserDao;
import com.springproject.dunk.hy.domain.MannerCheck;
import com.springproject.dunk.hy.domain.Profile;
import com.springproject.dunk.hy.domain.User;

@Service
public class UserServiceImpl implements UserService {

	private UserDao dao;
	
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	public UserServiceImpl(UserDao dao, BCryptPasswordEncoder passwordEncoder) {		
		this.dao = dao;
		this.passwordEncoder = passwordEncoder;
	}

	@Override
	public int login(String id, String pass) {
		
		User u=dao.getUser(id);
		
		int result=-1;
		
		if(u==null) {
			return result;
		}
		
		if(passwordEncoder.matches(pass, u.getPass())) {
			result=1;
			
		} else {
			result=0;
		}
		
		return result;
	}

	@Override
	public User getUser(String id) {		
		return dao.getUser(id);
	}

	@Override
	public boolean overlapIdCheck(String id) {
		
		User u=dao.getUser(id);
		
		if(u !=null) {
			return true;
		}
		
		return false;
	}

	@Override
	public boolean overlapNickCheck(String nickname) {
		
		User u=dao.getUserNick(nickname);
		
		if(u !=null) {
			return true;
		}
		
		return false;
	}

	@Override
	public void addUser(User user) {
		dao.addUser(user);		
	}

	@Override
	public MannerCheck getMannerCheck(String id) {		
		return dao.getMannerCheck(id);
	}

	@Override
	public void insertProfile(Profile p) {
		
		String frontYear1=p.getBirth().substring(0,2);
		String backYear1=p.getBirth().substring(2,4);
		
		int frontYear=Integer.parseInt(frontYear1);
		int backYear=Integer.parseInt(backYear1);
		
		int age=0;
		
		if(frontYear==19) {			
			age=23+(100-backYear)+1;		
			
		} else {
			age=23-backYear+1;
		}
		
		int agegroup=(age/10)*10;
		
		p.setAgegroup(agegroup);
		
		dao.insertProfile(p);		
	}

	@Override
	public Profile getProfile(String id) {		
		return dao.getProfile(id);
	}

	@Override
	public void addProfile(String id) {
		dao.addProfile(id);		
	}

	@Override
	public void addImg(String id) {
		dao.addImg(id);		
	}

	@Override
	public void updateProfile(Profile p) {
		dao.updateProfile(p);
	}
	
	@Override
	public void deleteProfile(String id) {
		
		User u=dao.getUser(id);
			
		dao.deleteProfile(id);
		
		if(u.getIsProfile() !=0) {
			dao.minusProfile(id);
		}	
		
		if(u.getProfileImg() !=0) {
			dao.minusImg(id);
		}	
		
	}
		

	@Override
	public void minusImg(String id) {		
				
		dao.minusImg(id);
		dao.deleteImg(id);		
	}

	@Override
	public boolean isPassCheck(String id, String pass) {		
		return passwordEncoder.matches(pass, dao.getPass(id));
	}

	@Override
	public void updateUser(User user) {
		dao.updateUser(user);		
	}
	
	@Override
	public void updatePass(String id, String pass) {
		dao.updatePass(id, pass);
	}
	
	@Override
	public void deleteUser(String id) {
		dao.deleteUser(id);
	}

	@Override
	public List<String> getManner(String id) {
		
		List<String> eList=new ArrayList<>();
		
		MannerCheck mc=dao.getMannerCheck(id);
		
		for(int i=0; i<4; i++) {
			
			int skill=mc.getSkillEval()*100/mc.getEvalNum();
			int manner=mc.getMannerEval()*100/mc.getEvalNum();
			int pre=mc.getPreManner()*100/mc.getEvalNum();
			int time=mc.getTimeManner()*100/mc.getEvalNum();
			
			if(skill<150) {
				eList.add("부족해요ㅠ");
				
			} else if(150<=skill && skill<250) {
				eList.add("보통이예요.");
				
			} else {
				eList.add("좋아요!");				
			}
			
			if(manner<150) {
				eList.add("부족해요ㅠ");
				
			} else if(150<=manner && manner<250) {
				eList.add("보통이예요.");
				
			} else {
				eList.add("좋아요!");				
			}
			
			if(pre<150) {
				eList.add("부족해요ㅠ");
				
			} else if(150<=pre && pre<250) {
				eList.add("보통이예요.");
				
			} else {
				eList.add("좋아요!");				
			}
			
			if(time<150) {
				eList.add("부족해요ㅠ");
				
			} else if(150<=time && time<250) {
				eList.add("보통이예요.");
				
			} else {
				eList.add("좋아요!");				
			}			
			
		}
		
		return eList;
	}

	@Override
	public User getUserByNick(String nick) {
		return dao.getUserByNick(nick);
	}
	
	
}
