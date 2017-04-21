<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- html의 주석 -->
	<h1>hello jsp</h1>
	
	<%
	int a=100;
	int b=20;
	// 한줄 주석
	/* 
		여러줄 주석
	*/
	System.out.println(a+b);
	out.println(a+b);
	out.print(a+b);
	out.println(a+b);
	%>
	
	
	
	<%
	out.println("<hr>");
	out.println(a+b);
	%>
</body>
</html>