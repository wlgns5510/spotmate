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
	
	public String insertKakao(String nickname, String email, String birth, String gender, int userNo) {
		UserVo uVo = userDao.getUserInfo(userNo);
		String month = uVo.getBirth().split("/")[1]; 
		if (uVo.getBirth().split("/")[1].length() == 1) {
			month = "0"+uVo.getBirth().split("/")[1]; 
		}
		String day = uVo.getBirth().split("/")[2];
		if (uVo.getBirth().split("/")[2].length() == 1) {
			day = "0"+uVo.getBirth().split("/")[2];
		}
		if( (month+day).equals(birth) && nickname.equals(uVo.getName()) && gender.equals(uVo.getGender())) {
			Map<String, Object> map = new HashMap<>();
			map.put("email", email);
			map.put("userNo", userNo);
			userDao.insertKakao(map);
			return "success";
		}
		return null;
	}
	
	public int chkHitch(int userNo) {
		return userDao.chkHitch(userNo);
	}
}
