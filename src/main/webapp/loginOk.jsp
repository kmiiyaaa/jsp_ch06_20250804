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
			session.setAttribute("sessionFlag","yes");  // 로그인 상태만 확인    
			session.setAttribute("memberId",id);
			// (세션이름(작명) , 세션에 저장할 로그인한 유저의 아이디값) sever안에 session안에 id(memberid = tiger)값 올라간다. 
			long current_loginTime = System.currentTimeMillis();  // 현재 시간
		 	session.setAttribute("logimTime", current_loginTime ); // 비교해보기 여기부분
		  response.sendRedirect("loginSuccess.jsp");  // 강제 페이지 이동 -> 로그인 성공 시 성공페이지 이동
		} else {
			 System.out.println("로그인실패");
			 response.sendRedirect("login.jsp");   // 강제 페이지 이동 -> 로그인 실패 시 로그인 페이지로 다시 강제이동
		}  
	%>


</body>
</html>