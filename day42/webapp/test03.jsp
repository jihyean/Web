<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:set var="member" value="admin"/>

	<c:if test= "${ member == 'admin' }">
		안녕하세요 관리자님
	</c:if >
	
	<c:if test= "${member != 'admin'}">
		안녕하세요 ${member}님
	</c:if>
	



</body>
</html>