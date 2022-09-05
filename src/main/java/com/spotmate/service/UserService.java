package com.spotmate.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.Certification;
import com.siot.IamportRestClient.response.IamportResponse;
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
	
	public String[] certification(String impUid) throws IamportResponseException, IOException {
		String impKey = "3850084311060237";
	      String impSecret = "K7Gk4reSKmrlKMpJAM0ZSe6ct2CEavDvXfKyrmBAuukceTtzC0gcDhQWg3fgCDNZq2YTTJtfKuXAbmtV";
	      IamportClient client = new IamportClient(impKey, impSecret);
	      IamportResponse<Certification> certificationResponse = client.certificationByImpUid(impUid.replace("=", ""));

	      String[] arr = new String[6];
	      arr[0] = certificationResponse.getResponse().getName().toString();
	      arr[1] = certificationResponse.getResponse().getPhone().toString();

	      String[] bArr = certificationResponse.getResponse().getBirth().toString().split(" ");
	      arr[3] = bArr[bArr.length-1];
	      if(bArr[1].equals("Jan")) {
	    	  arr[4] = "01";
	      } else if (bArr[1].equals("Feb")) {
	    	  arr[4] = "02";
	      } else if (bArr[1].equals("Mar")) {
	    	  arr[4] = "03";
	      } else if (bArr[1].equals("Apr")) {
	    	  arr[4] = "04";
	      } else if (bArr[1].equals("May")) {
	    	  arr[4] = "05";
	      } else if (bArr[1].equals("Jun")) {
	    	  arr[4] = "06";
	      } else if (bArr[1].equals("Jul")) {
	    	  arr[4] = "07";
	      } else if (bArr[1].equals("Aug")) {
	    	  arr[4] = "08";
	      } else if (bArr[1].equals("Sep")) {
	    	  arr[4] = "09";
	      } else if (bArr[1].equals("Oct")) {
	    	  arr[4] = "10";
	      } else if (bArr[1].equals("Nov")) {
	    	  arr[4] = "11";
	      } else if (bArr[1].equals("Dec")) {
	    	  arr[4] = "12";
	      }
	      arr[5] = bArr[2];
	      
	      return arr;
	}
}
