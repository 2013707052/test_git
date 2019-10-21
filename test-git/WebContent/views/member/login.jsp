<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="/css/member/login.css"> -->
<style>
	ul{
		list-style: none;
	}
</style>

</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	
	<section>
		<form action="/login" method="post" id="login-box">
			<h1>로그인</h1>
			<ul>
				<li><label for="id">아이디</label></li>
				<li><input type="text" name="id" id="id"></li>
				<li><label for="pw">비밀번호</label>
				<li><input type="password" name="pw" id="pw"></li>
				<li id="btn-wrapper">
					<br>
					<button type="button" class="btn btn-outline-danger btn-md" onclick="location.href = '/' ">메인으로</button>
					<button type="reset" class="btn btn-outline-danger btn-md">초기화</button>
					<button type="submit" class="btn btn-outline-danger btn-md">로그인</button>
					<br><br>
					<!-- <a href="/searchId">아이디/비밀번호 찾기</a> -->
					<a href="/views/member/find.jsp">아이디/비밀번호 찾기</a>
				</li>
				
			</ul>
		</form>
	</section>
</body>
</html>