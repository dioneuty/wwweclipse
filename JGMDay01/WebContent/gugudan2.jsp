<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>구구단</title>
</head>

<body>
<% //% 스크립트릿   %= 표현식  %>
<h2><% out.print("출력"); %></h2>
<h2><%="출력" %></h2>

<%
for(int i=0; i<10; i++){ %>
<hr>
<%} %>

   <table border="1">
      <% for(int j=1; j<10; j++){ %>
      <tr>
         <% for(int i=2; i<10; i++){ %>
            <td><%=i+"x"+j+"="+(i*j) %></td>
         <%} %>
      </tr>
      <%} %>
   </table>

</body>
</html>