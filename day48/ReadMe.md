## 오전 9:21 2023-07-17

CUD를 실패하거나 없는걸 보려고 하면 forward를 null로 보냄

<goback 페이지>
스크립트만 있는 페이지
	요청처리에 실패했습니다
스크립트 페이지이므로 뷰에 둬야 함
---> URL 조작이나 사용자가 이상한 이볅을 할 수 있기 때문에

[에러 발생]
프론트 문제인지 백 문제인지 찾아야 함
자바 콘솔에 나와있으면 백엔드 문제일 확률이 높다
웹 콘솔에 있으면 프론트

둘 다 문제 없으면 하나씩 추적하면서 찾아야 함

나 컨트롤러 
모델아 뭐 필요하냐?
뷰야 그거 내놔라
받아온거 set하고 model에 CRUD로 요청

코딩할때는 서버 끄기

페이지로만 가는건 약식으로 구현
실무에선 이렇게 안함
거의 모든 페이지에 기사나 광고가 있기 때문에
데이터가 없을 경우 없음
그리고 추후에 쓸 수 있기 때문에 해당 방식을 차용하지 않는다

커뮤니티
댓글 대댓글
sns 로그인



아무것도 임포트 ---> 낫포조
어노테이션 .do
서블릿이면 다 가지고 있음
---> 필터랑 리스너도 있다
 기본생성자 필수
gte post 무언가 수행
우린 가리지 않을것

1. 요청 추출
2. 액션 클래스의 excute() 메서드를 호출
3. 사용자에게 응답. View로 이동


회원
create database kim_ default character set UTF8;


drop tables reply;
drop tables board;
drop tables member;

CREATE TABLE MEMBER(
   MID VARCHAR(10) PRIMARY KEY,
   MPW VARCHAR(10) NOT NULL,
   NAME VARCHAR(15) NOT NULL
);

CREATE TABLE BOARD(
   BID INT PRIMARY KEY AUTO_INCREMENT,
   MID VARCHAR(10) NOT NULL, -- FK
   BCONTENT VARCHAR(30) NOT NULL,
   FAVCNT INT DEFAULT 0,
   REPLYCNT INT DEFAULT 0,
   DATE DATETIME NOT NULL DEFAULT (current_date)
);

CREATE TABLE REPLY(
   RID INT PRIMARY KEY AUTO_INCREMENT,
   BID INT NOT NULL, -- FK
   MID VARCHAR(10) NOT NULL, -- FK
   DATE DATETIME NOT NULL DEFAULT (current_date),
   RCONTENT VARCHAR(30) NOT NULL,
   FOREIGN KEY(BID) REFERENCES BOARD(BID) ON DELETE CASCADE
);

model 끼리 다른거 맡으면 패키지 다르게 파기도 함
아니면 님 VO?
나 DAO?

뷰의 모듈화 ---> 커스텀 태그


Set
1:N 글 : 댓글















