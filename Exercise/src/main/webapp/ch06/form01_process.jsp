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
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		
		StringBuffer sbf = new StringBuffer();
		
		sbf.append("name : " + name + "<br>");
		sbf.append("address : " + address + "<br>");
		sbf.append("email : " + email + "<br>");
		
		out.println(sbf);
	%>
</body>
</html>