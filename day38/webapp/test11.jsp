<%@page import="test.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,test.ProductVO, test.ProductDAO" %>
    
<jsp:useBean id="pDAO" class="test.ProductDAO" />
<jsp:useBean id="pVO" class="test.ProductVO" />
<jsp:setProperty property="*" name="pVO" />

<%
 // ★★★★★★★★★★
 // 장바구니, 로그인 유지 여부, 광고 띄우지않기 설정 등
 // 서버가 변경되어도 '브라우저가 유지되고있었다면 설정이 유지되어야하는 상태'에 있는 데이터들을
 // "세션(session)"으로 관리!!!!!
 // 일정 시간이 흐르면 연결이 해제됨
 // ★★★★★★★★★★

 	request.setCharacterEncoding("UTF-8");

	
	
	//ArrayList<String> datas = (ArrayList<String>)session.getAttribute("datas");
	ArrayList<ProductVO> datas = (ArrayList<ProductVO>)session.getAttribute("datas");
	

 	//String product=request.getParameter("product");
 	String product = request.getParameter("product");
 	int pk = Integer.parseInt(product);
 	
 	
 	if(datas==null){
 		datas=new ArrayList<ProductVO>();
 		session.setAttribute("datas", datas);
 	}
 	pVO.setTmp("장바구니중복");
 	pVO.setPk(pk);
 	pVO = pDAO.selectOne(pVO);

 	
%>
<script>
	<%
 	if(pVO.getTmp().equals("중복")){
 	%>
 	alert('<%=product%>이(가) 장바구니에 이미 있습니다');
 	<%
 	}
 	else{
 	%>
 		alert('<%=product%>이(가) 장바구니에 추가되었습니다! :D');
 	<%
		datas.add(pDAO.selectOne(pVO));
 	}
	%>
	history.go(-1);
</script>














