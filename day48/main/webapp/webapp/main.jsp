<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
</head>
<body>

<script type="text/javascript">
	function signup(){
		window.open("signup.jsp","회원가입 창","width=450,height=300");
	}
</script>

<div id="header">
	<h1>SNS 커뮤니티 실습 프로젝트</h1>
</div>

<div id="gnb">
	<ul>
		<li><a href="main.do">메인으로 가기</a></li>
		<li><a href="javascript:signup()">회원가입</a></li>
		<li>로그인 / 로그아웃 -> 커스텀태그</li>
	</ul>
</div>

<div id="content">
	<section>
		<form action="insertBoard.do" method="post">
			<input type="text" name="mid" required value="현재 로그인한 사람의 아이디">
			<input type="text" name="bcontent" required placeholder="내용을 작성하세요.">
			<input type="submit" value="글 작성하기">
		</form>
	</section>
	<hr>
	<section>
		게시글들을 보여주는 공간
			-> 댓글 작성할수있는 공간
		
		[더보기] : 페이지네이션
	</section>
</div>

<div id="footer">
	<h3>&copy; NAVER corp. | 회사소개 | 이용약관 | 개인정보처리방침 | 고객센터</h3>
</div>

</body>
</html>