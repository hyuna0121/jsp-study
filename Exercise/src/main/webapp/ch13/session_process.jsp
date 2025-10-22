<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<%
		String userId = request.getParameter("id");
		String userPw = request.getParameter("passwd");
		
		if ("admin".equals(userId) && "1234".equals(userPw)) {
			session.setAttribute("userId", userId);
		} 
		
		response.sendRedirect("welcome.jsp");
	%>
</body>
</html>