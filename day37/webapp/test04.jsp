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
	int result = 0;

	// 사용자가 전송한 데이터들은 모두 request 객체에 저장됨
	// 웹상의 모든 데이터들은 String 타입
	// 별도의 선언없이 사용가능한 객체가 있는데
	// 이런걸 "내장객체"라고 함 ex.request
	
	
	// 맨처음 화면을 로드하는 요청은 모두 GET 그래서 POST로 바꿈
	if (request.getMethod().equals("POST")) {
		int num1 = Integer.parseInt(request.getParameter("num1"));
		String op = request.getParameter("op");
		int num2 = Integer.parseInt(request.getParameter("num2"));

		if (op.equals("+")) {
			result = num1 + num2;
		} else if (op.equals("-")) {
			result = num1 - num2;
		}

	}
	%>

	<form method = "post">
		<input type="number" name="num1"> <select name="op">
			<option>+</option>
			<option>-</option>
		</select> <input type="number" name="num2"> <input type="submit" value="결과확인">
	</form>

	<hr>

	계산결과 : <%= result %>

</body>
</html>