<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="test.MemberVO,java.util.ArrayList" %>

<jsp:useBean id="mDAO" class="test.MemberDAO"></jsp:useBean>

<jsp:useBean id="member" class="test.MemberVO"></jsp:useBean>
<jsp:setProperty property="*" name="member" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method="post">
		<input type="text" name="mid" required placeholder="아이디를 입력해주세요">
		<input type="password" name="mpw" required placeholder="비밀번호를 입력해주세요">
		
		<button class = 'btn1'>회원가입</button> <!-- datas에 데이터 추가 insert (가입)-->
		<button class = 'btn2'>로그인</button> <!-- 로그인 확인 selectOne (로그인)-->
		<button class = 'btn3'>회원목록 출력</button> <!-- 회원목록 출력 selectAll-->
	</form>
	
	<hr>

<h2>회원목록</h2>
<ul>
<%
   ArrayList<MemberVO> datas=mDAO.selectAll(null);
   for(MemberVO v:datas){
      out.println("<li>"+v+"</li>");
   }
%>
</ul>
	
	
	
	<script src="https://code.jquery.com/jquery-3.7.0.min.js"
	integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
	crossorigin="anonymous"></script>
	
	<script type="text/javascript">
	
	$(document).ready(function() {
		$('.btn1').click(function() {
			<%
			boolean flag;
			
			flag = mDAO.insert(member);
			if(flag) {
			%>
				alert('가입 성공');
			<%
			}
			else {
			%>
				alert('가입 실패');
			<%
			}
			%>
		});
		
		$('.btn2').click(function() {
			<%
			member = mDAO.selectOne(member);
			if (member != null) {
			%>
				alert('로그인 성공');
			<%
			} 
			else
			{
			%>
			alert('로그인 실패');
				
			<%
			}
		%>	
		});
		
		$('.btn3').click(function() {
			
		});
	});
		
		
	</script>


</body>
</html>