<%@page import="com.kh.util.SendMailTest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<%
		SendMailTest send = new SendMailTest();
		
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<style>

	* {
		box-sizing: border-box; 
	}
	
	#h4 {
		text-align: center;
		padding-top: 100px;
		margin-botton : 100px;
		color: black;
	}

	.joinForm {
		/* font-family: 'Noto Sans KR', sans-serif; */
		font-family: 'Noto Sans KR', sans-serif;
		color: #565656;
		font-size: 15px;
		width : 100%;
		margin: 0 auto;
		
	}
	.tableClass{
		margin: 0 auto;
		width: 80%;
	}
		
	.colFirst{
		text-align: center;
		background: #FBFCFD;
		border: 1px solid lightgray;
		width: 20%;
	}
	
	.colSecond{
		padding-left: 20px;
		width: 80%;
		
	}
	
	.tableClass>tbody>tr {
		height: 50px;
		border: 1px solid lightgray;
	}
	
	.information {
		margin-left : 20px;
		font-size : 13px;
		color : gray;
	}
	
	#emailBtn{
		margin-left : 20px;
		font-size : 13px;
		color : gray;
	}
	
	input::placeholder {
		color: #c4c4c4;
		font-size: 13px;
	}
	
	.inputBox{
		width: 200px;
		height: 30px;
		border: 1px solid lightgray;
		padding: 10px;
	}
	
	.divBtn{
		width: 100%;
		margin-top :50px;
		padding-left: 680px;
		/* margin : 0 auto; */ 
	}
	
	.divForm{
		border: 1px solid lightgray;
		width : 50%;
		margin: 0 auto;	
	}
	
	td{
		height: 100px;
	}
	
	
	
	
	
</style>


</head>

<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>

	<!-- 
		id
		pw
		name
		birth
		gender
		phone
		email
		city
		grade
		date
		photoname
		photopath  -->
	<section>
	<div id="h4">
		<h4>회원가입</h4>
	</div>
	<div class="divForm">
		<form action="/join" method="post" id="memberJoin" class="joinForm" enctype="multipart/form-data" name="insertform">
		<br>
			<table class="tableClass">
				<tr>
					<td class="colFirst">아이디</td>
					<td class="colSecond">
						<input type="text" class="inputBox" name="id" id="id">
						<span class="information">5~20자의 영문 소문자, 숫자, 특수기호(_),(-)만 사용 가능</span>
						<div>
							<span id="chkIdMsg"></span>
						</div>
					</td>
					
				</tr>
				<tr>
					<td class="colFirst">패스워드</td>
					<td class="colSecond">
						<input type="password" class="inputBox" name="pw" id="pw">
						<span class="information">영어, 숫자, 특수문자 포함 8~15자리</span>
						<div>
							<span id="chkPwMsg"></span>
						</div>
					</td>
				</tr>
				<tr>
					<td class="colFirst">패스워드 확인</td>
					<td class="colSecond">
						<input type="password" class="inputBox" name="pwChk" id="pwChk">
						<span class="information">동일한 비밀번호 입력</span>
						<div>
							<span id="chkPwSameMsg"></span>
						</div>
					</td>
				</tr>
				<tr>
					<td class="colFirst">이름</td>
					<td class="colSecond">
						<input type="text" class="inputBox" name="name" id="name">
						<span class="information">2~6자리의 한글 입력</span>
						<div>
							<span id="chkNameMsg"></span>
						</div>
					</td>
					
					
				</tr>
				<tr>
					<td class="colFirst">생년월일</td>
					<td class="colSecond">
						<input type="text" class="inputBox" name="birth" id="birth" placeholder="ex) 1994-01-01">
						<span class="information">'-'을 포함하여 작성해주세요.</span>
						<div>
							<span id="chkBirthMsg"></span>
						</div>
					</td>
				</tr>
				<tr>
					<td class="colFirst">성별</td>
					<td class="colSecond">남자 <input type="radio" name="gender" value="남"> 
					    여자 <input type="radio" name="gender" value="여">
					</td>
				</tr>
				<tr>
					<td class="colFirst">전화번호</td>
					<td class="colSecond">
						<input type="text" class="inputBox" name="phone" id=phone placeholder="ex) 01012341234">
						<span class="information">핸드폰 번호 입력</span>
						<div>
							<span id="chkPhoneMsg"></span>
						</div>
					</td>
				</tr>
				<!-- <tr>
					<td class="colFirst">이메일</td>
					<td class="colSecond">
						<input type="text" class="inputBox" name="email" id="email">
						<button type="button" class="btn btn-light btn-sm" id="emailBtn" onclick="send.sendsend()">이메일 인증</button>
						<div>
							<span id="chkEmailMsg"></span>
						</div>
					</td>
				</tr> -->
				<tr>
				    <td class="colFirst">이메일 인증</td>
					<td class="colSecond">
						<input type="hidden" name="email" id="email">
					    <input type="text" class="inputBox" name="email1" id="email1" maxlength="15">
						<!-- @ <select name="email2">
						      <option value="0">직접입력</option>
						      <option value="naver.com">naver.com</option>
						      <option value="daum.net">daum.net</option>
						      <option value="nate.com">nate.com</option>
						      <option value="gmail.com">gmail.com</option>
						  </select> -->
						<input type="button" name="emailconfirm_btn" value="인증" 
				         onclick="emailcheck(insertform.email1.value,insertform.email2.value)">
				         <div>
							<span id="chkEmailMsg"></span>
						</div>
					</td>
				</tr>
				<tr>
					<td class="colFirst">주요 활동 지역</td>
					<td class="colSecond">
						<input type="text" class="inputBox" name="city" id="city" placeholder="ex) 서울시, 동두천시">
						<span class="information">'○○시'만 입력</span>
						<div>
							<span id="chkCityMsg"></span>
						</div>
					</td>
				</tr>
				<tr>
					<td class="colFirst">프로필 사진</td>
					<td class="colSecond">
						<!-- onchange="loadImg(this)" : 이게 변했을 때 이미지보기에 선택한 파일 보여줘야하므로 onchange 걸어줌 -->
						<input type="file" name="photoname" onchange="loadImg(this)">
						
					</td>
				</tr>
				<tr>
					<td class="colFirst">사진 미리보기</td>
					<td class="colSecond">
						<div id="img-viewer">
								<img id="img-view" width="200px">
						</div>
					</td>
				</tr>
	
			</table>
				<!-- <button type="button" class="btn btn-primary">돌아가기</button>
	          	<button type="button" class="btn btn-primary">다음단계</button> -->
			<div class="divBtn">
				<button type="button" class="btn btn-outline-info">돌아가기</button>
				<button type="submit" class="btn btn-outline-info">다음단계</button>
			</div>
		</form>
	</div>
	</section>
	<script>
		function loadImg(f){ //f: input태그
			console.log(f.files);	//인풋태그에 선택된 파일을 배열로 가져옴
			if(f.files.length!=0 && f.files[0]!=0){ //파일이 선택됐는지 체크 && 파일이 용량이 있는지 체크
				var reader = new FileReader(); //pc랑 브라우저를 연결하기 위해 사용?
				reader.readAsDataURL(f.files[0]); //매개변수로 지정한 파일의 경로 가져옴
				reader.onload = function(e){ //reader.onload : 파일을 다 읽어온 후 
					$("#img-view").attr('src', e.target.result); //e.target.result : reader.readAsDataUrl에서 읽어온 값을 꺼내오는 방법
				}
			}else{
				$("#img-view").attr('src','');
			}
		}
		
		$("#id").keyup(function(){
    		var id = $("#id").val();
    		var value = document.getElementById("id").value;
    		var regExp = /^[A-Za-z0-9_\-]{5,20}$/;
            var result = 0; 
    		
            if(regExp.test(value)){
                result = 1;
            }else{
                result = 2;
            } 
    		
    		$.ajax({
    			url: "/checkId",
    			type: "get",
    			data: {id:id},
    			success: function(data){
    				var msg = $("#chkIdMsg");
    				if(data=='1' && result == '1'){
    					msg.html('사용가능');
    					msg.css('color', 'green');
    				}else if(data=='1' && result =='2'){
    					msg.html('아이디 규칙을 지켜주세요.');
    					msg.css('color', 'red');
    				}else{
    					msg.html('이미 사용중인 아이디');
    					msg.css('color', 'red');
    				}
    			},
    			error: function(){
    				console.log("아이디 중복체크 실패");
    			}
    		});
    	});
		
		$("#pw").keyup(function(){
    		var pw = $("#pw").val();
    		var regExp = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;

    		var msg = $("#chkPwMsg");
			
    		if(regExp.test(pw)){
    			msg.html('사용가능');
				msg.css('color', 'green');
            }else{
            	msg.html('비밀번호 규칙을 지켜주세요.');
				msg.css('color', 'red');
            } 
    	});
		
		$("#pwChk").keyup(function(){
			var pw = $("#pw").val();
			var pwChk = $("#pwChk").val();
			var msg = $("#chkPwSameMsg");
			
			if(pw==pwChk){
				msg.html('비밀번호가 일치합니다.');
				msg.css('color', 'green');
			}else{
				msg.html('비밀번호가 일치하지 않습니다.');
				msg.css('color', 'red');
			}
		});
		
		$("#name").keyup(function(){
			var name = $("#name").val();
			var regExp = /^[가-힣]{2,6}$/;
			var msg = $("#chkNameMsg");
			
			if(regExp.test(name)){
    			msg.html('사용가능');
				msg.css('color', 'green');
            }else{
            	msg.html('이름 규칙을 지켜주세요.');
				msg.css('color', 'red');
            } 
		});
		
		$("#birth").keyup(function(){
			var birth = $("#birth").val();
			var regExp = /^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1])$/; 
			var msg = $("#chkBirthMsg");
			
			if(regExp.test(birth)){
    			msg.html('사용가능');
				msg.css('color', 'green');
            }else{
            	msg.html('생년월일 규칙을 지켜주세요.');
				msg.css('color', 'red');
            } 
		});
		
		$("#phone").keyup(function(){
			var phone = $("#phone").val();
			var regExp = /^01[0179][0-9]{8}$/; //01로 시작하여 그 다음은 0,1,7,9 중 하나와 매칭되는지 체크한뒤 7~8자리인지 검사
			var msg = $("#chkPhoneMsg");
			
			if(regExp.test(phone)){
    			msg.html('사용가능');
				msg.css('color', 'green');
            }else{
            	msg.html('핸드폰 번호 숫자 11자리를 입력해주세요.');
				msg.css('color', 'red');
            } 
		});
		
		$("#email").keyup(function(){
			var email = $("#email").val();
			var regExp = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/; //01로 시작하여 그 다음은 0,1,7,9 중 하나와 매칭되는지 체크한뒤 7~8자리인지 검사
			var msg = $("#chkEmailMsg");
			
			if(regExp.test(email)){
    			msg.html('사용가능');
				msg.css('color', 'green');
            }else{
            	msg.html('이메일 형식을 지켜주세요.');
				msg.css('color', 'red');
            } 
		});
		
		$("#city").keyup(function(){
			var city = $("#city").val();
			/* var regExp = /시$/; */
			var regExp = /^[ㄱ-ㅎㅏ-ㅣ가-힣]{2,5}시$/;
			var msg = $("#chkCityMsg");
			
			if(regExp.test(city)){
    			msg.html('사용가능');
				msg.css('color', 'green');
            }else{
            	msg.html('도시 입력 규칙을 지켜주세요.');
				msg.css('color', 'red');
            } 
		});
		/* 제주도는 ? ? ? ? ? ? ?  */
		
		(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
		

		function emailcheck(email1, email2){
			var emailAddr = email1+"@"+email2;
		    
			// 유효성 검사
			if(!insertform.email1.value || !insertform.email2.value){ 
				alert("이메일을 입력하세요");
				insertform.email1.focus();
				return;
			}else{
				if(insertform.email1.value){
					if(insertform.email2.value==0){
						//직접입력
						alert("이메일 주소를 선택해주세요.");
						if(insertform.email1.value.indexOf("@")==-1){
							alert("올바른 메일주소");
							insertform.email1.focus();
							return false;
						}
					}else{
						// 선택입력
						if(insertform.email1.value.indexOf("@")!=-1){
							alert(emailerror);
							insertform.email1.focus();
							return false;
						}
					}
				}
			}
		    
		    
		    // 인증을 위해 아작스 사용
		    $.ajax({
    			url: "/checkEmail",
    			type: "get",
    			data: {emailAddr:emailAddr},
    			success: function(data){
    				var msg = $("#chkEmailMsg");
    				if(data=='1'){
    					$('input[name=email]').attr('value',emailAddr);
    					msg.html('사용가능한 이메일 입니다.');
    					msg.css('color', 'green');
    				}else{
    					msg.html('이미 사용중인 이메일 입니다.');
    					msg.css('color', 'red');
    				}
    			},
    			error: function(){
    				console.log("이메일 중복체크 실패");
    			}
    		});
		    
		    
		    
			var url="emailCheck.jsp?email1="+email1+"&email2="+email2;
			open(url,"emailwindow", "statusbar=no, scrollbar=no, menubar=no, width=400, height=200" );
		                                                  
		}
		
		
	</script>
</body>
</html>