<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("loginId");
		String pw = request.getParameter("loginPw");
		
		if(id.equals("tiger") && pw.equals("12345")) {  // 참이면 로그인 성공
			
			session.setAttribute("memberId",id);   
		  // (세션이름(작명) , 세션에 저장할 로그인한 유저의 아이디값) sever안에 session안에 id값 올라간다.   session : 내장객체, 어느jsp에서 호출해서 쓸 수 있음 
		}
	
	%>


</body>
</html>