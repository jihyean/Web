<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>

	<div id="header">
		<%
		if (session.getAttribute("name") == null) {
		%>
		<form action="login.jsp" method="post">
			아이디 <input type="text" name="mid">
			비밀번호 <input type="password" name="mpw"> <input type="submit" value="로그인">
		</form>
		<%
		} else {
		%>
		<%=session.getAttribute("name")%>님, 안녕하세요! :D | <a href="logout.jsp">로그아웃</a>

		<hr>
		<h2>글 작성하기</h2>
		<form action="writePage.jsp" method="post">
			<textarea rows="10" cols="70" name="memo"></textarea>
			<input type="submit" value="작성하기">
		</form>
		
		<br>
		<hr>


		<div>
			<%
 
			ArrayList<String> write = (ArrayList<String>) application.getAttribute("write");

			if (write == null) {
				out.println("<p>작성된 글이 없습니다!</p>");
			} else {
				for (String v : write) {
					out.println("<p>" + v + "</p>");
				}
			}
			%>
		</div>



		<%
		}
		%>
	</div>

</body>
</html>