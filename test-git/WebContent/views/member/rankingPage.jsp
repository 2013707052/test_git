<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String str = "안녕하세여 저는 최진영입니다. 연상을 좋아해요. 돈이 많았으면 좋겠어요."; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아만다</title>
	<style>
		section{
			width:70%;
			margin:0 auto;
		}
		.all{
			float:left;
			padding-left:20px;
		}
		div{
			
			box-sizing: border-box;
		}
		.img{
			margin:0 auto;
			position: relative;
			top: 10px;
			left: 8px;
			border-bottom-left-radius: 30px;
			border-bottom-right-radius: 30px;
			border-top-left-radius: 30px;
			border-top-right-radius: 30px;
		}
	</style>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>

	<section>
		<h1 style="text-align:center;">TOP 12</h1>
		<br>
		<%for(int i=1;i<13;i++){ %>
		<div style="width:400px;height:200px; margin:0 auto; box-sizing: border-box;" class="all">
			<div style="width:40%;height:100%; float:left;">
				<img class="img" src="/img/깡패.png" style="width:90%;height:90%;">
			</div>
			<div style="width:60%;height:100%; float:left;">
				<div style="width:100%; height:50%;padding-left:10px;padding-top:15px;"><%=str.substring(0,40)+"..." %></div>
				<div style="width:100%; height:50%;">
					<div style="width:60%;height:100%;float:left;">
						<div style="width:100%;height:50%;padding-left:10px;padding-top:15px;">나이 : 29</div>
						<div style="width:100%;height:50%;padding-left:10px;">주소 : 서울</div>
					</div>
					<div style="width:40%;height:100%;float:left;padding-top:30px;">좋아요</div>
				</div>
			</div>
			
		</div>
		<%} %>				

	
	</section>
</body>
</html>