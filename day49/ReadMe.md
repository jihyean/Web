## 오전 9:28 2023-07-18

<a href ="main.do?count=${count+2}">[더보기]</a> <!-- 연산자는 el식 내부 -->

게시글들을 보여주는 공간
	-> 댓글 작성할수있는 공간
		
[더보기] : 페이지네이션

if(count == null || count.isEmpty() || count.isBlank() || count.equals("")) {
	count = "2";
}


count == null 이 가장 앞에 있는 이유는
가장 많이 null로 줘서 ---> 뒤의 연산을 최대한 생략하기 위해


작성과 관련된 뷰는 모두 write 태그에 있음
--->응집도가 높아짐

페이지가 다르면 변수명 설정한걸 알 수 없음
---> 값을 직접 받는다
