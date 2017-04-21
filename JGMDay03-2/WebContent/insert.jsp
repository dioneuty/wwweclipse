<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.Date"%>
<%@ page errorPage="err.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="template/header.jspf" %>
	<%@ include file="template/menu.jspf" %>
	<%
	String sub=request.getParameter("sub");
	String wid=request.getParameter("wid");
	String content=request.getParameter("content");
	content=content.replace("\n", "<br>");
	
	System.out.println(sub);
	System.out.println(wid);
	System.out.println(content);
	Date date = new Date();
	SimpleDateFormat sim=new SimpleDateFormat("yyyy-MM-dd");
	
	String sql="insert into lec_bbs (idx,sub,wid,content,nalja) ";
	sql+="values (lec_bbs_seq.nextval,?,?,?,?)";
	int result=0;
	try{
		Class.forName(driver);
		conn=DriverManager.getConnection(url, user, password);
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, sub);
		pstmt.setString(2, wid);
		pstmt.setString(3, content);
		pstmt.setString(4, sim.format(date));
		result=pstmt.executeUpdate();
	}finally{
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
		if(result>0)response.sendRedirect("list.jsp");
		else response.sendRedirect("add.jsp");
	}
	%>
	
	<%@ include file="template/footer.jspf" %>
</body>
</html>