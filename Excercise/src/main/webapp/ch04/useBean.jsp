<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="mul" class="ch04.com.dao.GuGuDan" />
	<h4>구구단 출력하기</h4>
	<%= mul.process(5) %>	
</body>
</html>