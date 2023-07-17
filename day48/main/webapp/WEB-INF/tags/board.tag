<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${not empty mid}">
		<form action="insertBoard.do" method="post">
			<input type="text" name="mid" required value="${mid}" readonly>
			<input type="text" name="bcontent" required placeholder="내용을 작성하세요.">
			<input type="submit" value="글 작성하기">
		</form>
</c:if>



<c:if test="${empty mid}">
		<form action="insertBoard.do" method="post">
			<input type="text" name="mid" required value="" readonly>
			<input type="text" name="bcontent" required placeholder="로그인 후 작성가능합니다" readonly>
		</form>
</c:if>