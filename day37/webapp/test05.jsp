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
	// 자바 영역 스크립틀릿
	String result = "다시 입력하세요.";

	if (request.getMethod().equals("POST")) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		
		if (id.equals("admin") && pw.equals("1234")) {

				result = "관리자님 환영합니다! :D";

		}

	}
	%>

	<form method = "post">
		<input type ="text" name = "id" required placeholder="아이디를 입력해주세요">
		<input type ="password" name = "pw" required placeholder="비밀번호를 입력해주세요">
		<input type="submit" value="결과확인">
	</form>

	<hr>

	<%= result %>

</body>
</html>