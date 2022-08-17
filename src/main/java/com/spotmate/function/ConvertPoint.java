package com.spotmate.function;

public class ConvertPoint {
	
	public String convertPoint(int point) {
		StringBuffer str = new StringBuffer();
		str.append(point);
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
	
	public String convertPoint(StringBuffer point) {
		StringBuffer str = new StringBuffer();
		str.append(point);
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
}
