<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		response.setHeader("Refresh", "5");
		// response.setIntHeader("Refresh", 5);
		
		LocalDateTime now = LocalDateTime.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("hh:mm:ss a");
		
		out.println(now.format(formatter) + "<br>");
		out.println(Calendar.getInstance().getTime() + "<br>");
	%>
	<a href="response_data.jsp" role="button">Google 홈페이지로 이동하기</a>
</body>
</html>