<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*, com.hb.util.MyOracle"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%!
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
%>
<body>
<jsp:useBean id="login" class="com.hb.dto.Guest03Bean"></jsp:useBean>
<jsp:setProperty property="name" name="login"/>
<jsp:setProperty property="pay" name="login"/>
<%
	String sql="select count(*) from guest03 where name=? and pay=?";
	try{
		conn=MyOracle.getConnection();
		pstmt=conn.prepareStatement();
		pstmt.setString(1,login.getName())
		pstmt.setL}

%>
<h1><jsp:getProperty property="name" name="login"/>�α��� �Ǿ����ϴ�.</h1>
<h1><%=login.getName() %>�� �α��� �Ǿ����ϴ�</h1>
<% %>
<h1>�α��� ����</h1>
<% %>
</body>
</html>