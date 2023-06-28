<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.sendRedirect("test08.jsp");
	// forward 액션과 달리
	// 처음에 요청한 데이터가 유지되지 않는다
	// 또한 URL이 바뀐다 == 새로운 요청 처리
	
%>