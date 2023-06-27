<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:useBean id="cb" class="test.CalcBean"></jsp:useBean>
<%-- 액션 태그를 활용하면 객체화 할 수 있다 (객체화를 담당하는 태그)
CalcBean cb = new CalcBean();
--%>

<jsp:setProperty property="*" name="cb"/>
<%-- cb 객체의 멤버변수 초기화 
멤버변수가 4개이므로 getter setter가 각각 4번 호출될것
객체의 멤버변수 이름과 파라미터 이름이 같아야 함(자동형변환 처리)
따라서 설계서가 중요함
--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코드 분리</title>
</head>
<body>

	<% cb.calculate(); %>


	<form method="post">
		<input type="number" name="num1"> <select name="op">
			<option>+</option>
			<option>-</option>
		</select> <input type="number" name="num2"> <input type="submit"
			value="결과확인">
	</form> 

	<hr>
	계산결과 : <jsp:getProperty property="result" name="cb"/> <br>
	<%= cb.getResult() %>

</body>
</html>