<%@page import="dao.BookRepository"%>
<%@page import="java.util.List"%>
<%@page import="dto.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session" /> --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>도서 목록</title>
	<!-- 부트 스트랩 연결 -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
	<div class="container py-4">
  	<%@ include file="menu.jsp" %>

   	<jsp:include page="title.jsp">
   		<jsp:param value="도서목록" name="title"/>
   		<jsp:param value="BookList" name="sub"/>
   	</jsp:include>
    
    <% 
    	// List<Book> listOfBooks = bookDAO.getAllBooks();
    
    	// BookRepository 공유 객체로 변경
    	BookRepository bookDAO = BookRepository.getInstance();
    	List<Book> listOfBooks = bookDAO.getAllBooks();
    %>

    <div class="row align-items-md-stretch text-center">
    	<%
    		for (int i = 0; i < listOfBooks.size(); i++) {
    			Book book = listOfBooks.get(i);
    	%>
    	
    	<div class="col-md-4">
    		<div class="h-100 p-2">
    			<h5><b><%= book.getName() %></b></h5>
    			<p>
    				<%= book.getAuthor() %>
    				<br>
    				<%= book.getPublisher() %> | <%= book.getReleaseDate() %>
    			</p>
    			<p><%= book.getDescription().substring(0, 60) %>...</p>
    			<p><%= book.getUnitPrice() %>원</p>    			
    			<p>
    				<!-- 보조 기기(스크린 리더)에게 버튼처럼 동작하는 요소라고 알려줌 -->
    				<a href="./book.jsp?id=<%= book.getBookId() %>" class="btn btn-secondary" role="button">
    					상세 정보 &raquo;
    				</a>
    			</p>
    		</div>
    	</div>
    	
    	<%
    		}
    	%>
 		</div>
 		
    <%@ include file="footer.jsp" %>
  </div>
</body>
</html>