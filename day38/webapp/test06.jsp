<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<jsp:forward page="test08.jsp">
		<jsp:param value="12345" name="test"/>
	</jsp:forward>
	<%--
	forward 액션 태그를 활용하면
	처음에 요청했던(전송했던) 데이터들이 유지됨
	URL이 변경되지 않음
	별도의 새 요청이 된것이 아니라, 새로운 요청(추가된 요청)이 처리된 것처럼 동작함
	 --%>
