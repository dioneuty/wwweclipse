<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width-device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<style>
	</style>
</head>

<body>
<%
	String msg="로그인 실패";
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	
	Thread.sleep(10000);
	
	if(id.equals("admin")&&pw.equals("1234")){
		msg="로그인 성공";
	}else if(id.equals("guest")&&pw.equals("1111")){
		msg="손님으로 로그인 중";
	}
%>
	<h1><%=msg %></h1>
	<h1><%=request.getParameter("id") %>님 로그인 중</h1>
</body>
</html>