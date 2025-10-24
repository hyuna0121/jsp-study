<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Database SQL</title>
</head>
<body>
	<!-- Statement 객체를 이용하여 SELECT 쿼리문 실행 결과 값 가져오기 -->
	<%@ include file="dbconn.jsp" %>
	<table border="1" style="width:300px">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
		</tr>
		<%
			ResultSet rs = null;
			Statement stmt = null;
			
			try {
				String sql = "SELECT * FROM member";
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);				
				
				while (rs.next()) {
		%>
		<tr>		
			<td><%= rs.getString("id") %></td>
			<td><%= rs.getString("passwd") %></td>
			<td><%= rs.getString("name") %></td>
		</tr>			
		<%
				}
			} catch (SQLException e) {
				out.println("member 테이블 호출에 실패했습니다.<br>");
				out.println("SQLException : " + e.getMessage());
			} finally {
				if (rs != null) rs.close();
				if (stmt != null) stmt.close();
				if (conn != null) conn.close();
			}
		%>
	</table>
</body>
</html>