<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
</head>
<body>
	<!-- 폼 페이지에서 입력한 아이디와 비밀번호 값의 길이 검사하기 -->
	<form name="loginForm" action="validation03_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="passwd"></p>
		<button type="submit" onclick="checkLogin(event)">전송</button>
	</form>
	
	<script type="text/javascript">
		function checkLogin(e) {
			const form = document.loginForm;
			
			if (form.id.value.length < 4 || form.id.value.length > 12) {
				alert("아이디는 4~12자 이내로 입력 가능합니다!");
				form.id.select();
				e.preventDefault();
				return ;
			}
			
			if (form.passwd.value.length < 4) {
				alert("비밀번호는 4자 이상으로 입력해야 합니다!");
				form.passwd.select();
				e.preventDefault(); 
				return ;
			}
		}
	</script>
</body>
</html>