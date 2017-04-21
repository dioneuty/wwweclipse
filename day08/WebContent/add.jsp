<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/frame.css" />
<style type="text/css">
	section>h1{
		font-size: 2em;
		width: 80%;
		border-bottom: solid gray 1px;
		margin: 50px auto;
		text-align: center;
	}
	section>form{
		width: 80%;
		margin: 0px auto;
		border:solid gray 1px;
		margin-bottom: 50px;
	}
	form>p{
		border-bottom-style: dotted;
		border-bottom-color: red;
		border-bottom-width: 1px;
		height: 80px;
	}
	form>p>label{
		width: 150px;
		background-color: gray;
		display: inline-block;
		margin: 0px 50px;
		text-align: center;
		color:white;
		font-weight: bold;
	}
	form>p:last-child{
		text-align: center;
		border-bottom-width: 0px;
		height: 30px;
	}
}

</style>
</head>
<body>
	<header>
		<img alt="logo" src="imgs/logo2.jpg"/>
	</header>
	<nav>
		<ul>
			<li><a href="list.jsp">List</a></li>
			<li><a href="#">Menu1</a></li>
			<li><a href="#">Menu2</a></li>
			<li><a href="#">Menu3</a></li>
		</ul>
	</nav>
	<section>
		<h1>입력페이지</h1>
		<form action="insert.jsp" method="post">
		<p>
		<label for="name">이름</label><input type="text" name="name"/>
		</p>
		<p>
		<label for="pay">금액</label><input type="range" min="1000" max="10000" name="pay"/>
		
		</p>
		<p>
			<button type="submit">입력</button>
			<button type="reset">취소</button>
		</p>
		</form>
	</section>
	<footer>
		<address>
		 (121-854) 서울시 마포구 신수동 63-14 구프라자 b1층
		</address>
		<p>
		Copyright (c) 2017 한빛교육센터 All rights reserved.
		</p>
	</footer>
</body>
</html>