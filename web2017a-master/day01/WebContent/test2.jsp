<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%!
	public void func1(){
		b++;
	}
%>
<%!
	int b=200; // 맴버필드
%>
<body>

<%
	int a=100;// 지역변수
%>
<%
	out.print("a="+a);
	out.print(", ");
	func1();
	out.print("b="+b);
%>

</body>
</html>