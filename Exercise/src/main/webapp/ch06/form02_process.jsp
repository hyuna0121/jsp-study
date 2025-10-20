<%@page import="java.util.Enumeration"%>
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
		Enumeration<String> paramNames = request.getParameterNames();
		
		StringBuffer sbf = new StringBuffer();
		
		while(paramNames.hasMoreElements()) {
			String name = paramNames.nextElement();
			String val = request.getParameter(name);
			
			sbf.append(name + " : " + val + "<br>");			
		}
		
		out.println(sbf);
	%>
</body>
</html>