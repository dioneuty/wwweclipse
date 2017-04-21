<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%!	// 선언부 클래스 내부 메인메소드 밖
	// 맴버필드,메소드
	// 생성자 불가
	public String func01(int a, int b){
		String msg=a+"x"+b+"="+(a*b);
		return msg;
	}
%>
<body>
<h1>구구단3</h1>
<% // 메인메소드 내부 %>
<table>
	<%for(int j=1; j<10; j++){ %>
	<tr>
		<%for(int i=2; i<10; i++){ %>
		<td><%=func01(i,j) %></td>
		<%} %>
	</tr>
	<%} %>
</table>
</body>
</html>