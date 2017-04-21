<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>    
<%@ page import="java.util.ArrayList" %>    
<%@ page import="com.hb.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%!
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	private ArrayList list=new ArrayList();
%>
<body>
<%
	String sql="select sabun, name, nalja, pay form guest02";
	sql+=" order by lvl1 desc, lvl2 desc, lvl3 asc";
	conn=MyDB.getConnection();
	try{
		stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		while(rs.next()){
			Guest02Bean bean=new Guest02Bean();
			bean.setSabun(rs.getInt(1));
			bean.setName(rs.getString(2));
			bean.setNalja(rs.getInt(3));
			bean.setPay(rs.getInt(4));
			list.add(bean);
		}
	}finally{
		rs.close();
		stmt.close();
		conn.close();
	}
	String msg=request.getParameter("msg");
	if(msg==null)msg="";
	else if(Integer.parseInt(msg)>0)msg="�� ��";
	else msg="�� ��";
%>
	<h2 bgcolor="red"><%=msg %></h2>
	<h1>��� ������</h1>
	<table width="80%" border="1" cellspacing="0">
		<tr>
			<th>���</th>
			<th>�̸�</th>
			<th>��¥</th>
			<th>�ݾ�</th>
		</tr>
		<%for(Guest02Bean bean:list){ %>
		<tr>
			<td><%=bean.getSabun() %></td>
			<td><%=bean.getName() %></td>
			<td><%=bean.getNalja() %></td>
			<td><%=bean.getPay() %></td>
		</tr>
		<%}%>
	</table>
		<p align="center"><a href="add.jsp">�Է�</a></p>
</body>
</html>