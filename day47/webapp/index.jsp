<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	response.sendRedirect("main.do");
	// URL: main.do
	// .do로 끝남 ---> FrontController(FC)로 가주세요!~~
	// .jsp로 끝남 ---> 해당 페이지(View)를 보여주세요!~~~
	
	// controller.jsp?action=main VS main.do
	// 전자가 불리 ---> action이라는 파라미터를 들고 다녀야 되서 상대적으로 불리
%>