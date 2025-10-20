<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
</head>
<body>
	<!-- 폼 페이지에서 입력한 비밀번호 값이 숫자인지 검사하기 -->
	<form name="loginForm" action="validation04_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="passwd"></p>
		<button type="submit" onclick="checkLogin(event)">전송</button>
	</form>
	
	<script type="text/javascript">
		function checkLogin(e) {
			const form = document.loginForm;
			
			for (let ch of form.id.value) {
				if (ch < 'a' || ch > 'z') {
					alert("아이디는 영문 소문자만 입력 가능합니다!");
						form.id.select();
						e.preventDefault();
						return ;
				}
			}
			
			if (isNaN(form.passwd.value)) {
				alert("비밀번호는 숫자만 입력 가능합니다!");
				form.passwd.select();
				e.preventDefault(); 
				return ;
			}
		}
	</script>
</body>
</html>