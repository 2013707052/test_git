<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
       .hbody {
            margin: 0 auto;
            font-size: 2.0em;
        }

        .hsection {
            float: left;
            height: 100%;
        }

        #side {
            width: 10%;
        }

        #center {
            width: 80%;
        }

        .dropdown-menu {
            padding-top: 0px;
            padding-bottom: 0px;
        }

        .dropdown-menu>li {
            text-align: center;
            background-color: blueviolet;
			list-style: none;

        }

        .dropdown-menu>li>a {
            color: black;
            font-weight: bolder;
            text-decoration: none;
        }
    </style>
</head>
<body>
	 <div class="header" style="width: 100%; height: 80px; background-color: pink;">
        <div class="hsection" id="side">
            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true" style="float: right; margin-top: 42px; background-color: deeppink; font-weight: bolder;">
                Menu
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">공지사항</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Q & A</a></li>
                <li role="presentation" class="dropdown-header" style="color: red; font-weight: bolder;">커뮤니티</li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">자유게시판</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">오픈채팅</a></li>
                <li role="presentation" class="dropdown-header" style="color: red; font-weight: bolder;">The Others</li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="/views/searchProfile/searchProfile.jsp">Search & Send Message</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">좋아요 투표</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Go To Payment</a></li>
            </ul>
        </div>
        <div class="hsection" id="center">
            <p style="display: inline-block; margin-bottom: 0px; height: 0px; vertical-align: text-bottom; font-weight: bolder;"> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 예쁜 텍스트 및 이미지를 찾아서 로고로 넣어 볼까요?</p>
            <button type="button" class="btn btn-primary" style="float: right; margin-top: 42px; font-weight: bolder">Login Account</button>
        </div>
        <div class="hsection" id="side">
            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true" style="float: left; margin-top: 42px; background-color: deeppink; font-weight: bolder;">
                Option
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Log Out</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">My Page</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">AD Registration</a></li>
            </ul>
        </div>
    </div>
</body>
</html>