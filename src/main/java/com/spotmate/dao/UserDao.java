package com.spotmate.dao;

import java.util.Map;

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
	
	public UserVo loginOk(UserVo userVo) {
		return ss.selectOne("users.loginOk", userVo);
	}
	
	public int idChk(String id) {
		return ss.selectOne("users.idChk", id);
	}
	
	public UserVo kakaoLogin(Map<String, Object> userInfo) {
		try {
			return ss.selectOne("users.kakaoLogin", userInfo);
		} catch (NullPointerException e) {
			return null;
		}
	}
	
	public void insertKakao(Map<String, Object> map) {
		ss.insert("users.insertKakao", map);
	}

}
