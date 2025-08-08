<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 추가</title>
</head>
<body>
	
	<%
		request.setCharacterEncoding("utf-8");
	
	  String product = request.getParameter("product");  // 장바구니에 넣을 제품
	  
	  ArrayList<String> cart = (ArrayList<String>)session.getAttribute("cart"); //cart라는 이름의 arraylist를 뺀다 -> 있으면다행, 없으면? null  
	  // 기존 세션에 cart(arrayList타입) 존재하면 가져오기  ---- 문제 해결
	  // 첫 번째 장바구니에 삽입시 cart -> null => ArrayList<String> cart = null; 과 같다
	  
	  if (cart == null) {  // cart가 null값일 때만 ArrayList 새로 생성
		  cart = new ArrayList<String>();  // 새 장바구니 생성 / 문제) 계속해서 새로만들어서 - 기존에넣은건 지워진다. ->기존꺼에 추가해야한다.	  
	  }	  
	 
	  cart.add(product);  // 상품추가
	  
	  session.setAttribute("cart", cart);  // 세션에 상품 목록 저장
	
	%>
	
	<h2>장바구니에 <%= product %>이(가) 추가되었습니다.</h2>
	<a href = "productList.jsp"> 상품 더 담기 </a><br><br>
	<a href = "viewCart.jsp"> 장바구니 보기 </a>


</body>
</html>