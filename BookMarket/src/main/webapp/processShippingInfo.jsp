<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>배송 정보 처리</title>
	
	<!-- 부트스트랩 연결 -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<!-- 배송 정보 처리 페이지 작성하기 -->
	<%
		// 사용자가 입력한 배송 정보를 쿠키에 저장
		// 쿠키 이름과 값 설정
		// (참고) 쿠키는 원래 ASCII 문자만 지원
		Cookie cartId = new Cookie("Shipping_cartId", URLEncoder.encode(request.getParameter("cartId"), "UTF-8"));
		Cookie name = new Cookie("Shipping_name", URLEncoder.encode(request.getParameter("name"), "UTF-8"));
		Cookie shippingDate = new Cookie("Shipping_shippingDate", URLEncoder.encode(request.getParameter("shippingDate"), "UTF-8"));
		Cookie country = new Cookie("Shipping_country", URLEncoder.encode(request.getParameter("country"), "UTF-8"));
		Cookie zipCode = new Cookie("Shipping_zipCode", URLEncoder.encode(request.getParameter("zipCode"), "UTF-8"));
		Cookie addressName = new Cookie("Shipping_addressName", URLEncoder.encode(request.getParameter("addressName"), "UTF-8"));
		
		// 유효시간 24시간 설정
		cartId.setMaxAge(60 * 60 * 24);
		name.setMaxAge(60 * 60 * 24);
		shippingDate.setMaxAge(60 * 60 * 24);
		country.setMaxAge(60 * 60 * 24);
		zipCode.setMaxAge(60 * 60 * 24);
		addressName.setMaxAge(60 * 60 * 24);
		
		// 응답에 쿠키 추가
		response.addCookie(cartId);
		response.addCookie(name);
		response.addCookie(shippingDate);
		response.addCookie(country);
		response.addCookie(zipCode);
		response.addCookie(addressName);
		
		response.sendRedirect("orderConfirmation.jsp");
	%>
</body>
</html>