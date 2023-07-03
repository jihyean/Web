<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.ArrayList" %>


<%	
	//MemberVO data = mDAO.selectOne( mVO );
	String memo = "["+session.getAttribute("name") + "님]: "+ request.getParameter("memo");
	
	ArrayList<String> write =(ArrayList<String>)application.getAttribute("write");
	
	if(write == null){
		write =new ArrayList<String>();
		application.setAttribute("write", write);
	} 
	
	write.add(memo);
%>
<script>
	alert('새로운 글이 추가되었습니다! :D');
	location.href='mainPage.jsp';
</script>