<%@page import="com.kh.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Member member = (Member)request.getAttribute("member");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<section>
		<form action="/update" style="width:800px; margin:0 auto; color:black;">
		<h1>회원 정보</h1>
		<table class="table">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="memberId" class="form-control" value="<%=member.getId()%>" readonly></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="memberPw" class="form-control" value="<%=member.getPw()%>"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="memberName" class="form-control" value="<%=member.getName()%>"></td>
			</tr>
			<tr>
				<th>나이</th>
				<td><input type="text" name="age" class="form-control" value="<%=member.getAge()%>"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" name="email" class="form-control" value="<%=member.getEmail()%>"></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="text" name="phone" class="form-control" value="<%=member.getPhone()%>"></td>
			</tr>
			<tr>
				<th>가입일</th>
				<td><input type="text" name="enrollDate" class="form-control" value="<%=member.getEnrollDate()%>" readonly></td>
			</tr>
			<tr>
				<th colspan="2" style="text-align:center;">
					<button class="btn btn-outline-danger btn-lg" type="submit">수정하기</button>
					<%if(member.getId().equals("admin")){ %>
						<button class="btn btn-outline-danger btn-lg" type="button" onclick="#'">회원관리</button>
					<%} else{ %>
						<button class="btn btn-outline-danger btn-lg" type="button" onclick="location.href='/delete?id=<%=member.getId()%>'">회원탈퇴</button>
					<%} %>
				</th>
			</tr>
		</table>
		</form>
	
	</section>
	

</body>
</html>