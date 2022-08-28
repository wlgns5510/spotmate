package com.spotmate.function;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

public class NaviHttpRequest {
	
	private List<Double> start = new ArrayList<Double>();
	private List<Double> end = new ArrayList<Double>();
	
	public NaviHttpRequest() {
	}
	public NaviHttpRequest(List<Double> start ,List<Double> end) throws IOException {
		this.start = start;
		this.end = end;
	}
	
	private String convertMoney(StringBuffer money) {
		StringBuffer str = new StringBuffer();
		str.append(money);
		if (str.length() > 6) {
			if (str.length() == 7) {
				str.insert(1, ",");
				str.insert(5, ",");
			} else if (str.length() == 8) {
				str.insert(2, ",");
				str.insert(6, ",");
			}
		} else if (str.length() <= 6 && str.length() > 3) {
			if (str.length() == 6) {
				str.insert(3, ",");
			} else if (str.length() == 5) {
				str.insert(2, ",");
			} else if (str.length() == 4) {
				str.insert(1, ",");
			}
		}
		str.append("P");
		
		return str.toString();
	}
	
	public Map<String, Object> getVer() throws IOException {
		int totalDur = 0;
		int totalDis = 0;
		URL url = new URL("https://apis-navi.kakaomobility.com/v1/directions?origin="+start.get(0)+","+start.get(1)+"&destination="+end.get(0)+","+end.get(1)+"&waypoints=&priority=RECOMMEND&car_fuel=GASOLINE&car_hipass=true&alternatives=false&road_details=false");
		HttpURLConnection httpConn = (HttpURLConnection) url.openConnection();
		httpConn.setRequestMethod("GET");

		httpConn.setRequestProperty("Authorization", "KakaoAK 2b24f06df2137983cc98995c1ddce575");

		BufferedReader br = new BufferedReader(new InputStreamReader(httpConn.getInputStream()));
		String line = "";
		String result = "";
        
		while ((line = br.readLine()) != null) {
			result += line;
		}
		br.close();
		
		JsonElement element = JsonParser.parseString(result);
		String info = element.getAsJsonObject().get("routes").toString();
		info = info.substring(1);
		info = info.substring(0, info.length()-1);
		JsonElement jSection = JsonParser.parseString(info);
		String section = jSection.getAsJsonObject().get("sections").toString();
		String summary = jSection.getAsJsonObject().get("summary").toString();
		section = section.substring(1);
		section = section.substring(0, section.length()-1);
		
		JsonElement jSummary = JsonParser.parseString(summary);
		String Strfare = jSummary.getAsJsonObject().get("fare").toString();
		String dur = jSummary.getAsJsonObject().get("duration").toString();
		String dis = jSummary.getAsJsonObject().get("distance").toString();
		totalDur = Integer.parseInt(dur);
		int temp1 = 0;
		int temp2 = 0;
		temp1 = totalDur / 60;
		temp2 = totalDur % 60;
		StringBuffer totalDur1 = new StringBuffer();
		totalDur1.append(temp1);
		totalDur1.append("분");
		totalDur1.append(temp2);
		totalDur1.append("초");
		totalDis = Integer.parseInt(dis);
		int temp3 = 0;
		int temp4 = 0;
		temp3 = totalDis / 1000;
		temp4 = totalDis % 1000;
		StringBuffer totalDis1 = new StringBuffer();
		totalDis1.append(temp3);
		totalDis1.append(".");
		totalDis1.append(temp4);
		totalDis1.append("km");
		
		JsonElement jFare = JsonParser.parseString(Strfare);
		String taxi = jFare.getAsJsonObject().get("taxi").toString();
		String toll = jFare.getAsJsonObject().get("toll").toString();
		int sum = Integer.parseInt(taxi) + Integer.parseInt(toll);
		
		int fare = 0;
		StringBuffer totalFare = new StringBuffer();
		if ((int) (sum * 0.3) % 10 == 0) {
			fare = (int) (sum * 0.3);
		} else {
			for (int j = 1; j < 10; j++) {
				if ((int) (sum * 0.3) % 10 == j) {
					fare = (int) (sum * 0.3) + (10 - j);
				}
			}
		}
		totalFare.append(fare);
		String totalFares = convertMoney(totalFare);
		
		StringBuffer benefit = new StringBuffer();
		if ((sum - (int) (sum * 0.3)) % 10 == 0) {
			fare = sum - (int) (sum * 0.3);
		} else {
			for (int j = 1; j < 10; j++) {
				if ( (sum - (int) (sum * 0.3)) % 10 == j) {
					fare = (sum - (int) (sum * 0.3)) + (10 - j);
				}
			}
		}
		benefit.append(fare);
		String benefits = convertMoney(totalFare);

		JsonElement jRoad = JsonParser.parseString(section);
		String roads = jRoad.getAsJsonObject().get("roads").toString();
		roads = roads.substring(1);
		roads = roads.substring(0, roads.length()-1);
		String[] arr = roads.split("[{}]");
		List<String> lst = new ArrayList<String>();
		for(int i=0;i<arr.length;i++) {
			StringBuffer sb = new StringBuffer();
			sb.append(arr[i]);
			sb.insert(0, "{");
			sb.insert(arr[i].length()+1, "}");
			lst.add(sb.toString());
		}
		for(int i=0;i<lst.size();i++) {
			if (lst.get(i).equals("{}") || lst.get(i).equals("{,}")) {
				lst.remove(i);
			}
		}
		List<Double> latlng = new ArrayList<Double>();
		
		for(int i=0;i<lst.size();i++) {
			JsonElement vertexes = JsonParser.parseString(lst.get(i));
			String ver = vertexes.getAsJsonObject().get("vertexes").toString();
			ver = ver.substring(1);
			ver = ver.substring(0, ver.length()-1);
			for (int j=0;j<ver.split(",").length;j++) {
				latlng.add(Double.parseDouble(ver.split(",")[j]));
			}
		}
		Map<String, Object> totalInfo= new HashMap<String, Object>();
		totalInfo.put("totalFare", totalFares);
		totalInfo.put("benefit", benefits);
		totalInfo.put("totalDur", totalDur1);
		totalInfo.put("intDur", totalDur);
		totalInfo.put("totalDis", totalDis1);
		totalInfo.put("latlng", latlng);
		
		
        
		return totalInfo;
	}
}