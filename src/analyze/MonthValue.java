package analyze;

public class MonthValue {
	public static int month(String month) {
		if(month.equalsIgnoreCase("jan")) {
			return 1;
		}else if(month.equalsIgnoreCase("feb")) {
			return 2;
		}else if(month.equalsIgnoreCase("mar")) {
			return 3;
		}else if(month.equalsIgnoreCase("apr")) {
			return 4;
		}else if(month.equalsIgnoreCase("may")) {
			return 5;
		}else if(month.equalsIgnoreCase("jun")) {
			return 6;
		}else if(month.equalsIgnoreCase("jul")) {
			return 7;
		}else if(month.equalsIgnoreCase("aug")) {
			return 8;
		}else if(month.equalsIgnoreCase("sep")) {
			return 9;
		}else if(month.equalsIgnoreCase("oct")) {
			return 10;
		}else if(month.equalsIgnoreCase("nov")) {
			return 11;
		}else {
			return 12;
		}
		
		
	}
}
