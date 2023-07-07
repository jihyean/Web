
기능이 적은건 괜찮은데
설계서에 적힌거 다 정확하게 구현

7/13부터
개인 개발일지 / 팀 개발 일지
오전 진도, 오후 개발

25일까지 완성
26일에는 리허설 ---> 코드 수정하지 않음, 발표 피드백

28일 금요일 자유~~

======================================

JAVA
	M: JDBC
JSP
	V
	C -> controller.jsp

MVC 모델1
a.jsp -> controller01.jsp -> b.jsp
b.jsp -> controller02.jsp -> c.jsp
		data
		(상품이름)


MVC 모델2 << action으로 분리
a.jsp -> controller.jsp -> b.jsp
	action01(웹툰 목록 보여줘)

b.jsp -> controller.jsp -> c.jsp
	action02(웹툰 한개 보여줘)
		data
		(웹툰이름)

if(action ==1){
}
else if(action ==2){
}

create database kim default character set UTF8;

//========================================

회원테이블
회원VO
 mid
 mpw
 name
CREATE TABLE MEMBER(
   MID VARCHAR(20) PRIMARY KEY,
   MPW VARCHAR(20) NOT NULL,
   NAME VARCHAR(20) NOT NULL
);
INSERT INTO MEMBER VALUES('admin','1234','관리자');
게시글테이블
게시글VO
 num
 title
 content
 writer << FK 외래키 : mid → 반드시 상대 테이블의 PK를 가져와야함!
CREATE TABLE BOARD(
   NUM INT PRIMARY KEY AUTO_INCREMENT,
   TITLE VARCHAR(30) NOT NULL,
   CONTENT VARCHAR(50) NOT NULL,
   WRITER VARCHAR(20) NOT NULL -- 실무에선 FK 등록 안하는 경우가 많음(제약이 너무 많아짐) // 설계서에는 기재 필수
);
INSERT INTO BOARD VALUES(1,'제목','테스트','admin');
INSERT INTO BOARD (TITLE,CONTENT,WRITER) VALUES('제목','테스트','admin');
//========================================

회원가입
로그인
로그아웃
회원정보 변경
회원 탈퇴

게시글 작성
게시글 전체목록 보기
게시글 1개 출력
게시글 변경
게시글 삭제

--------------------------------------------------------------------------
메인페이지
	로그인 / 회원가입
	마이페이지 / 로그아웃 / 게시글 작성
	게시글 전체목록 보기
회원가입 페이지
	회원가입

마이페이지
	회원정보 변경
	회원 탈퇴

게시글 상세페이지
	게시글 1개 출력
	게시글 변경 / 게시글 삭제

게시글 작성 페이지
	게시글 작성
+
index.jsp --->  표지
controller.jsp
	action 파라미터 값
	login

자바에서의 모든 요청은 컨트롤러한테

글은 세션 ㄴㄴ ---> DB
로그인은 세션 ---> 브라우저마다 달라서

장바구니, 로그인, 광고등은 세션
게시글 상품 등은 DB(모든 사용자에게 같기 때문)

컨트롤러 없이 메인페이지로 이동 불가
datas가 없으니까
메인 페이지 요청을 해야지만 볼 수 있음

인덱스 == 컨트롤러

C(index) --main--> C -> V(main) --login--> C --main--> C -> V(main)

에러의 위치/ 원인
데이터의 현재상태
원하는 데이터는 어떤 형태?

뷰에서 뷰 절대 금지
바로 뚝배기

action 무조건 보내줘야 함
그래야 컨트롤러가 뭐할지 안다

main은 무조건 컨트롤러를 통해서 올 수 있다
response.sendRedirect("controller.jsp?action=main");
