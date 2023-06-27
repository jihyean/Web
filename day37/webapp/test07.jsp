<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="lb" class="test.LoginBean"></jsp:useBean>
<jsp:setProperty property="*" name="lb" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 코드 분리</title>
</head>
<body>
	<% lb.login(); %>

	<form method="post">
		<input type="text" name="id" required placeholder="아이디를 입력해주세요">
		<input type="password" name="pw" required placeholder="비밀번호를 입력해주세요">
		<input type="submit" value="결과확인">
	</form>
	
	<script type="text/javascript">

	<%
		if(lb.isResult()){
	%>
			alert('관리자 로그인 성공');
	<%
		}
		else{
	%>
			alert('관리자 로그인 실패');
	<%
		}
	%>
	</script>

</body>
</html>