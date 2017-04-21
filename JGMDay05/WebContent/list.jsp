<%@ page import="../src/com.hb.dao/Guest01Dao" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, com.hb.dto.Guest01Bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ page include file="template/header.jspf" %>
	<%@ page include file="template/menu.jspf" %>
		<center>
		<h1>목록</h1>
		<table>
			<tr bgcolor="#cccccc">
				<th>사변</th>
				<th>이름</th>
				<th>날짜</th>
				<th>금액</th>
			</tr>
			<%
				Guest01Dao dao=new Guest01Dao();
				ArrayList<Guest01Bean> list=dao.selectAll();
				if(list!=null){
					for(int i=0;i<list.size();i++){
						Guest01Bean bean=list.get(i);
					}
				}
			%>
			<tr>
				<td><%=bean.getSabun()%></td>
				<td><%=bean.getName()%></td>
				<td><%=bean.getNalja()%></td>
				<td><%=bean.getPay()%></td>
			</tr>
			<%
				}
			}
			%>
		</table>
			<p>
				<a href="add.jsp">입력</a>
			</p>
		</center>
	<%@ page include file="template/footer.jspf" %>
</body>
</body>
</html>