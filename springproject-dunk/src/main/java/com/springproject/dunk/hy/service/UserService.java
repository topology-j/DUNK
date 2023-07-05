package com.springproject.dunk.hy.service;

import java.util.List;

import com.springproject.dunk.hy.domain.MannerCheck;
import com.springproject.dunk.hy.domain.Profile;
import com.springproject.dunk.hy.domain.User;

public interface UserService {
	
	public int login(String id, String pass);

	public User getUser(String id);
	
	public boolean overlapIdCheck(String id);
	
	public boolean overlapNickCheck(String nickname);
	
	public void addUser(User user);
	
	public MannerCheck getMannerCheck(String id);	
	
	public void insertProfile(Profile p);
	
	public Profile getProfile(String id);
	
	public void addProfile(String id);
	
	public void addImg(String id);
	
	public void updateProfile(Profile p);
	
	public void deleteProfile(String id);
	
	public void minusImg(String id);
	
	public boolean isPassCheck(String id, String pass);
	
	public void updateUser(User user);
	
	public void updatePass(String id, String pass);
	
	public void deleteUser(String id);
	
	public List<String> getManner(String id);
	
	public User getUserByNick(String nick);
	
	public void addMannerCheck(MannerCheck mc);
	
	public void updateMannerCheck(MannerCheck mc);
}
