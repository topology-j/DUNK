package com.springproject.dunk.hy.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproject.dunk.hy.domain.MannerCheck;
import com.springproject.dunk.hy.domain.Profile;
import com.springproject.dunk.hy.domain.User;

@Repository
public class UserDaoImpl implements UserDao {

	private final String NAME_SPACE="com.springproject.dunk.mapper.UserMapper";
	
	private SqlSessionTemplate sqlSession;

	@Autowired
	public UserDaoImpl(SqlSessionTemplate sqlSession) {		
		this.sqlSession = sqlSession;
	}

	@Override
	public User getUser(String id) {		
		return sqlSession.selectOne(NAME_SPACE+".getUser", id);
	}

	@Override
	public User getUserNick(String nickname) {		
		return sqlSession.selectOne(NAME_SPACE+".getUserNick", nickname);
	}

	@Override
	public void addUser(User user) {
		sqlSession.insert(NAME_SPACE+".addUser", user);		
	}

	@Override
	public MannerCheck getMannerCheck(String id) {		
		return sqlSession.selectOne(NAME_SPACE+".getMannerCheck", id);
	}

	@Override
	public void insertProfile(Profile p) {
		sqlSession.insert(NAME_SPACE+".insertProfile", p);		
	}

	@Override
	public Profile getProfile(String id) {		
		return sqlSession.selectOne(NAME_SPACE+".getProfile", id);
	}

	@Override
	public void addProfile(String id) {
		sqlSession.update(NAME_SPACE+".addProfile", id);		
	}

	@Override
	public void addImg(String id) {
		sqlSession.update(NAME_SPACE+".addImg", id);		
	}

	@Override
	public void updateProfile(Profile p) {
		sqlSession.update(NAME_SPACE+".updateProfile", p);		
	}
	
	public void deleteProfile(String id) {
		sqlSession.delete(NAME_SPACE+".deleteProfile", id);
	}

	@Override
	public void minusImg(String id) {		
		sqlSession.update(NAME_SPACE+".minusImg", id);		
	}
	
	@Override
	public void minusProfile(String id) {
		sqlSession.update(NAME_SPACE+".minusProfile", id);
	}

	@Override
	public void deleteImg(String id) {		
		sqlSession.update(NAME_SPACE+".deleteImg", id);		
	}

	@Override
	public String getPass(String id) {		
		return sqlSession.selectOne(NAME_SPACE+".getPass", id);
	}

	@Override
	public void updateUser(User user) {
		sqlSession.update(NAME_SPACE+".updateUser", user);		
	}
	
	@Override
	public void updatePass(String id, String pass) {
		
		Map<String, Object> params=new HashMap<>();
		
		params.put("id", id);
		params.put("pass", pass);
		
		sqlSession.update(NAME_SPACE+".updatePass", params);
	}
	
	@Override
	public void deleteUser(String id) {
		sqlSession.delete(NAME_SPACE+".deleteUser", id);
	}

	@Override
	public User getUserByNick(String nick) {		
		return sqlSession.selectOne(NAME_SPACE+".getUserByNick", nick);
	}
	
}
