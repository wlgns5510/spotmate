package com.spotmate.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spotmate.dao.UserDao;
import com.spotmate.vo.UserVo;

@Service
public class UserService {
	
	@Autowired
	private UserDao ud;
	
	public UserVo getInfo() {
		return ud.getUserInfo();
	}

}
