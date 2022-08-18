package com.spotmate.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spotmate.vo.UserVo;

@Repository
public class UserDao {
	
	@Autowired
	private SqlSession ss;
	
	public void joinUser(UserVo userVo) {
		ss.insert("users.joinUser", userVo);
	}
	
	

}
