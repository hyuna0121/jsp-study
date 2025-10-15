package ch04.com.dao;

public class GuGuDan {
	public String process(int n) {
		String result = "";
		result += "=== " + n + "단 ===<br>";
		for (int i = 1; i < 10; i++) {
			result += n + " * " + i + " = " + (n * i) + "<br>";
		}
		return result;
	}
}
