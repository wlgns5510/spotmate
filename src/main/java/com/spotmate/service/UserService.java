package com.spotmate.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spotmate.dao.UserDao;
import com.spotmate.vo.UserVo;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	public void joinUser(UserVo userVo) {
		userVo.setBirth(userVo.getYear() +"/"+ userVo.getMonth() +"/"+ userVo.getDay());
		userDao.joinUser(userVo);
	}
	
	public UserVo loginOk(UserVo userVo) {
		
		if(userDao.loginOk(userVo)==null) {
			return null;
		}
		
		return userDao.loginOk(userVo);
		
	}
	
	public int idChk(String id) {
		return userDao.idChk(id);
	}
	
	public UserVo kakaoLogin(Map<String, Object> userInfo) {
		UserVo authUser = userDao.kakaoLogin(userInfo);
		if ( authUser == null) {
			return null;
		}
		return authUser;
	}
	
	public void insertKakao(String nickname, String email, int userNo) {
		Map<String, Object> map = new HashMap<>();
		map.put("nickname", nickname);
		map.put("email", email);
		map.put("userNo", userNo);
		userDao.insertKakao(map);
	}
}
