<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table width="100%">
		<tr>
			<td>
				<img alt="logo" src="../imgs/logo2.jpg">
			</td>
		</tr>
		<tr>
			<td align="center" bgcolor="red">
				<a href="/day07/" style="color: white;text-decoration: none;">HOME</a>
				<a href="/day07/guest03/main.jsp" style="color: white;text-decoration: none;">게시판</a>
				<a href="/day07/login/login.jsp" style="color: white;text-decoration: none;">로그인</a>
				<a href="#" style="color: white;text-decoration: none;">menu</a>
			</td>
		</tr>
		<tr>
			<td height="300">
			<!-- content -->
			<jsp:useBean id="login" class="com.hb.dto.LoginBean" scope="session"></jsp:useBean>
			<%
			System.out.println("login.getResult():"+login.getResult());
			if(login.getResult()>0){ 
			%>
			<h1><jsp:getProperty property="name" name="login"/>님 로그인 중입니다</h1>
			<a href="login3.jsp">logout</a>
			<%}else{ %>			
			<h1>로그인</h1>
			<jsp:include page="form.jsp"></jsp:include>
			<%}%>
			<!-- content end-->
			</td>
		</tr>
		<tr>
			<td bgcolor="#cccccc">
				<p>Copyright (c) 2017 한빛교육센터 All rights reserved.</p>
			</td>
		</tr>
	</table>
</body>
</html>