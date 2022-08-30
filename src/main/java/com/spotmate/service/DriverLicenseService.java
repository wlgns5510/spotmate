package com.spotmate.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.spotmate.dao.DriverLicenseDao;
import com.spotmate.vo.DriverLicenseVo;

@Service
public class DriverLicenseService {

	@Autowired
	private DriverLicenseDao mrDao;

	//드라이버 정보 + 카 정보 가져오기   (드라이버 신청 메인)
	public DriverLicenseVo getCarInfo(int userNo) {
		
		//드라이버 기본정보
		DriverLicenseVo dlvo = mrDao.getCarInfo(userNo);
		
		//차량 옵션정보 가져와서 dlvo에 추가
		List<Integer> carDetailList = mrDao.getCarDetail(userNo);
		dlvo.setCh_type(carDetailList);
		
		return dlvo;
	}
		

	
	//드라이버 정보 최초 등록하기
	public void carInfoInsert(DriverLicenseVo dlvo) {
		System.out.println("DriverLicenseService>carInfoInsert");
		
		
		//유저정보수정//////////////////////////////////////////////////
		int count= mrDao.userUpdate(dlvo);
		
		
		//첨부파일 정보를 꺼내서 필요한 데이터를 추출한다./////////////////////////////////////
		//첨부파일 저장 장소
		String saveDir = "C:\\javaStudy\\upload";
		
		// vo에서 파일을 꺼내온다
		MultipartFile file = dlvo.getFile();
		
		// -원파일이름
		String orgName = file.getOriginalFilename();

		// 확장자
		String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));

		// -저장파일이름 -->DB에 저장할때 사용
		String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;

		// -파일패스 생성  -->서버에 파일 복사할때 사용
		String filePath = saveDir + "\\" + saveName;

		// 파일업로드(복사)
		try {
			byte[] fileData = file.getBytes();
			OutputStream out = new FileOutputStream(filePath);
			BufferedOutputStream bout = new BufferedOutputStream(out);

			bout.write(fileData);

			if (bout != null) {
				bout.close();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		//자동차 정보 업데이트//////////////////////////////////////////////////
		//dlvo 에 saveName 을 추가한다
		dlvo.setC_file(saveName);
		
		//업데이트
		count = mrDao.carUpdate(dlvo);

		
		//자동차 디테일 옵션 정보 추가//////////////////////////////////////////////////
		
		//기존값을 삭제하고
		mrDao.carDetailDelete(dlvo);
		
		//받은값을 저장한다
		List<Integer> chType = dlvo.getCh_type();
		if(chType != null) {
			for (int i = 0; i < chType.size(); i++) {
				Map<String, Integer> carDetailMap = new HashMap<String, Integer>();
				carDetailMap.put("userNo", dlvo.getUserNo());
				carDetailMap.put("detailNo", chType.get(i));
				System.out.println(carDetailMap);
				mrDao.carDetailUpdate(carDetailMap);
			}
		}
		
	}

	
	
	//드라이버 정보 수정
	public void carInfoModify(DriverLicenseVo dlvo) {
		System.out.println("DriverLicenseService>carInfoModify");
		System.out.println(dlvo);
		//유저정보수정//////////////////////////////////////////////////
		int count= mrDao.userUpdate(dlvo);
		
		//첨부파일이 있는지 확인한다
		// vo에서 파일의 오리지널 이름을 꺼내서 확인한다
		MultipartFile file = dlvo.getFile();
		//오리지널 파일 이름
		String orgName = file.getOriginalFilename(); 
		System.out.println(orgName);
		
		
		if(orgName == "" || orgName == null ) { //첨부파일이 없다면 파일빼고 수정
			
			//업데이트
			count = mrDao.carUpdateNoFile(dlvo);
			
		}else { //첨부파일이 있다면 파일도 수정
			
			//첨부파일 정보를 꺼내서 필요한 데이터를 추출한다./////////////////////////////////////
			//첨부파일 저장 장소
			String saveDir = "C:\\javaStudy\\upload";
			
			// 확장자
			String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));

			// -저장파일이름 -->DB에 저장할때 사용
			String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;

			
			// -파일패스 생성  -->서버에 파일 복사할때 사용
			String filePath = saveDir + "\\" + saveName;
			
			
			// 파일업로드(복사)
			try {
				byte[] fileData = file.getBytes();
				OutputStream out = new FileOutputStream(filePath);
				BufferedOutputStream bout = new BufferedOutputStream(out);

				bout.write(fileData);

				if (bout != null) {
					bout.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			
			//dlvo 에 saveName 을 추가한다
			dlvo.setC_file(saveName);
			
			//업데이트
			count = mrDao.carUpdate(dlvo); 
			
		}
		//자동차 디테일 옵션 정보 추가//////////////////////////////////////////////////
		
		//기존값을 삭제하고
		mrDao.carDetailDelete(dlvo);
		
		//받은값을 저장한다
		List<Integer> chType = dlvo.getCh_type();
		if(chType != null) {
			for (int i = 0; i < chType.size(); i++) {
				Map<String, Integer> carDetailMap = new HashMap<String, Integer>();
				carDetailMap.put("userNo", dlvo.getUserNo());
				carDetailMap.put("detailNo", chType.get(i));
				System.out.println(carDetailMap);
				mrDao.carDetailUpdate(carDetailMap);
			}
		}

	}

	
	

}
