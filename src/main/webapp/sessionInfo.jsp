<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션의 모든 정보</title>
</head>
<body>
	<h2>모든 세션 정보 확인 하기</h2>
	<hr>
	<%
		Enumeration<String> sessionEnum = session.getAttributeNames();  // 세션의 모든 정보를 반환 ->  열거형 으로 반환
		
		while(sessionEnum.hasMoreElements()){  // 열거형은 hasMoreElements로 다음요소 있는지 확인
		 String sName = sessionEnum.nextElement().toString();  // 화살표이동하고 빼주고 
		 String value1 = session.getAttribute(sName).toString();
		 // 객체 안에 있는 문자열을 빼서 반환해줘! -> toString()
		 // 에러 String value2 = (String) session.getAttribute(sName); 반환한게 문자열 자체가 아닌 객체안에있는 문자열이라 다운캐스팅 안됨
		 
		 out.println(sName + ":" + value1 + "<br>");
		}
		
		String session_id = session.getId();
		// 접속한 브라우저별로 매칭되는 유니크한 ID값
		out.println("세션 고유 ID : " + session_id);
	%>
	<hr>
	<a href="loginUser.jsp">로그인 유저 페이지 바로 가기 </a>

</body>
</html>