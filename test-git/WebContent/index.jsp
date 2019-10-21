<%@page import="com.kh.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    Member m = (Member)session.getAttribute("member");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>


	<h1>텔레토비 프로젝트 시작!</h1>
	
	<h1>영상이형이 닭도리탕 빨리 사줬으면...</h1>
<<<<<<< HEAD
	<a href="/views/member/rankingPage.jsp">랭킹페이지 테스트</a>


	<br>
	<a href="/views/member/join.jsp">가입페이지</a>
	<br>
		
	
	
	<%if(m==null){ %>
	<a href="/views/member/login.jsp">로그인</a>
	<%}else{ %>
	<button class="btn btn-danger" onclick="location.href='/mypage?id=<%=m.getId() %>'">My Page</button>
	<a href="/logout">로그아웃</a>
	<%} %>

</body>
</html>	