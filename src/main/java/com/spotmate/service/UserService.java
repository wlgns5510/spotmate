package com.spotmate.service;

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
}
