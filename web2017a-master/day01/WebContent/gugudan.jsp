<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>������</h1>
<table border="1">
	<tr>
	<%
	for(int i=2; i<10; i++){
		out.println("<th>");
		out.println(i+"��");
		out.println("</th>");
	}
	%>
	</tr>
		<%
		for(int j=1; j<10; j++){
			out.println("<tr>");
			for(int i=2; i<10; i++){
				out.println("<td>"+i+"x"+j+"="+(i*j)+"</td>");
			}
			out.println("</tr>");
		}
		%>
</table>

</body>
</html>