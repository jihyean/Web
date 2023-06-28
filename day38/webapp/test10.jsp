<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="test.ProductVO,java.util.ArrayList"  %>

<jsp:useBean id="pDAO" class="test.ProductDAO" />
<jsp:useBean id="pVO" class="test.ProductVO" />
<jsp:setProperty property="*" name="pVO" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String member = request.getParameter("mid");
	if (session.getAttribute("member") == null) {
		session.setAttribute("member", member);
	}
	%>

	<h1><%=session.getAttribute("member")%>님, 안녕하세요! :D
	</h1>
	<form action="test11.jsp">
		상품 <select name="product">
			<%
			ArrayList<ProductVO> datas = pDAO.selectAll(null);
			for (ProductVO v : datas) {
			%>
			<option value="<%=v.getPk()%>"><%=v%></option>
			<%
			}
			%>
		</select> <input type="submit" value="장바구니에 추가하기">
	</form>
	<hr>
	<a href="test12.jsp">최종 결제하기</a>

</body>
</html>