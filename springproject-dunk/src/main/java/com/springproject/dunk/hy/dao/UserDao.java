package com.springproject.dunk.hy.dao;

import com.springproject.dunk.hy.domain.MannerCheck;
import com.springproject.dunk.hy.domain.Profile;
import com.springproject.dunk.hy.domain.User;

public interface UserDao {

	public User getUser(String id);
	
	public User getUserNick(String nickname);
	
	public void addUser(User user);
	
	public MannerCheck getMannerCheck(String id);
	
	public void insertProfile(Profile p);
	
	public Profile getProfile(String id);
	
	public void addProfile(String id);
	
	public void addImg(String id);
	
	public void updateProfile(Profile p);
	
	public void deleteProfile(String id);
	
	public void minusImg(String id);
	
	public void minusProfile(String id);
	
	public void deleteImg(String id);
	
	public String getPass(String id);
	
	public void updateUser(User user);
	
	public void updatePass(String id, String pass);
	
	public void deleteUser(String id);
	
	public User getUserByNick(String nick);
	
	public void addMannerCheck(MannerCheck mc);
	
	public void updateMannerCheck(MannerCheck mc);
	
}
