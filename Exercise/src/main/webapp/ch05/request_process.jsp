<%@page import="java.net.URLDecoder"%>
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
		String query = request.getQueryString();
		out.println("전송된 요청 파라미터 : " + query);
	%>
	<br>
	<%
		// 디코딩된 값으로 출력하고 싶으면
		String decodedQuery = URLDecoder.decode(request.getQueryString(), "UTF-8");
		out.println("전송된 요청 파라미터 : " + decodedQuery);
	%>
	
	<!-- GET, POST 상관없이 서버로 전달된 요청 파라미터는 getParameter()로 얻음 -->
	<p>아이디 : <%= request.getParameter("id") %></p>
	<p>비밀번호 : <%= request.getParameter("pw") %></p>
</body>
</html>