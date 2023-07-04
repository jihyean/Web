<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- 태그 라이브러리 지시어를 통해 임포트 -->
<jsp:useBean id="pb" class ="test.ProductBean" scope="session"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 선택 페이지</title>
</head>
<body>

<form action="test02.jsp" method="post">
	<select name ="product">
		<c:forEach var ="v" items ="${pb.pdatas}">
			<option> ${v} </option>
		</c:forEach>		
	</select>
	<input type="submit" value ="상품 선택">


</form>

</body>
</html>