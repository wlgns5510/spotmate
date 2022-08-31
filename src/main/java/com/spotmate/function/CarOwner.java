package com.spotmate.function;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Scanner;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.spotmate.vo.CarAuthInfoVo;

public class CarOwner {
	
	private Scanner s;
//	public static void main(String[] args) throws IOException {
//		URL url = new URL("https://datahub-dev.scraping.co.kr/assist/eCar/CarRegiste");
//		HttpURLConnection httpConn = (HttpURLConnection) url.openConnection();
//		httpConn.setRequestMethod("POST");
//
//		httpConn.setRequestProperty("Authorization", "Token 0689bebad1ba4295a760fba070e44a797264b7c3");
//		httpConn.setRequestProperty("Content-Type", "application/json;charset=UTF-8");
//		String carnum = "\"23서8534\"";
//		String name = "\"진화정\"";
//		httpConn.setDoOutput(true);
//		OutputStreamWriter writer = new OutputStreamWriter(httpConn.getOutputStream());
//		writer.write("{\"TASK\" : \"2\",\n  \"REGINUMBER\" : "+carnum+",\n  \"OWNERNAME\" : "+name+",\n  \"CARREGIOPEN\" : \"0\"\n}");
//		writer.flush();
//		writer.close();
//		httpConn.getOutputStream().close();
//
//		InputStream responseStream = httpConn.getResponseCode() / 100 == 2
//				? httpConn.getInputStream()
//				: httpConn.getErrorStream();
//		Scanner s = new Scanner(responseStream).useDelimiter("\\A");
//		String result = s.hasNext() ? s.next() : "";
//		JsonElement element = JsonParser.parseString(result);
//		String data = element.getAsJsonObject().get("data").toString();
//		System.out.println(data.contains(name));
//		s.close();
//	}
	
	public int CarAuth(CarAuthInfoVo carInfo) throws IOException {
		String carNum2 = "\""+carInfo.getCnum()+"\"";
		String  name2 = "\""+carInfo.getName()+"\"";
		URL url = new URL("https://datahub-dev.scraping.co.kr/assist/eCar/CarRegiste");
		HttpURLConnection httpConn = (HttpURLConnection) url.openConnection();
		httpConn.setRequestMethod("POST");

		httpConn.setRequestProperty("Authorization", "Token f302782e25b244c8a79125e0e75dfa63f1ff95f5");
		httpConn.setRequestProperty("Content-Type", "application/json;charset=UTF-8");
		httpConn.setDoOutput(true);
		OutputStreamWriter writer = new OutputStreamWriter(httpConn.getOutputStream());
		writer.write("{\"TASK\" : \"2\",\n  \"REGINUMBER\" : "+carNum2+",\n  \"OWNERNAME\" : "+name2+",\n  \"CARREGIOPEN\" : \"0\"\n}");
		writer.flush();
		writer.close();
		httpConn.getOutputStream().close();

		InputStream responseStream = httpConn.getResponseCode() / 100 == 2
				? httpConn.getInputStream()
				: httpConn.getErrorStream();
		s = new Scanner(responseStream).useDelimiter("\\A");
		String result = s.hasNext() ? s.next() : "";
		System.out.println(result);
		JsonElement element = JsonParser.parseString(result);
		String data = element.getAsJsonObject().get("data").toString();
		s.close();
		System.out.println(data);
		if ( data.contains(carInfo.getName()) == true ) {
			return 0;
		}
		return -1;
		
	}
}
