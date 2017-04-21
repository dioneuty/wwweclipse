<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*,java.util.*,com.hb.util.MyDB"
    %>
<%@ page import="com.hb.javaBean.Guest03Bean" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/frame.css"/>
<style type="text/css">
	section>h1{
		margin:50px auto;
		border-bottom : solid #cccccc 2px;
		width: 80%;
		text-align: center;
		font-size: 2em;
	}
	section>table{
		width: 80%;
		margin: 0px auto;
		border-top-color: gray;
		border-top-style: solid;
		border-top-width: 1px;
		border-left-color: gray;
		border-left-style: solid;
		border-left-width: 1px;
		border-bottom-color: darkgray;
		border-bottom-style: solid;
		border-bottom-width: 5px;
		
		border-right-color: darkgray;
		border-right-style: solid;
		border-right-width: 5px;
	
	}
	section>table tr>th:nth-child(1)
	,section>table tr>th:nth-child(4){
		width: 15%;
	}
	section>table tr>th:nth-child(3){
		width: 20%;
	}
	
	section>table tr>th{
		background-color: gray;
	}
	section>table tr>td{
		border-bottom-style: dotted;
		border-bottom-color: red;
		border-bottom-width: 1px;
	}
	section>table tr>td:nth-child(1)
	,section>table tr>td:nth-child(4){
		text-align: right;
	}
	section>table tr>td:nth-child(3){
		text-align: center;
	}
	section>table tr:hover{
		background-color: red;
		height: 50px;
	}
	section>p{
		text-align: center;
	}
	section>p>a{
		color:white;
		background-color: darkgray;
		text-decoration:none;
		margin:20px auto;
		display:inline-block;
		width:80px;
		height:30px;
		border-top: gray solid 1px;
		border-left: gray solid 1px;
		border-right: gray solid 5px;
		border-bottom: gray solid 5px;
	}
	section>p>a:hover{
		background-color: red;
		font-size: 1.5em;
	}
	
	#result{
		text-align:center;
		background-color: red;
		color: white;
		font-size:2em;
		font-weight: bold;
		<%
		String result=request.getParameter("result");
		if(result==null){
			out.println("display: none");
		}
		%>
	}
</style>
</head>
<%!
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
%>
<body>
<%
	String sql="select * from guest03";
	ArrayList<Guest03Bean> list= new ArrayList<Guest03Bean>();
	
	try{
		conn=MyDB.getConnection();
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next()){
			Guest03Bean bean= new Guest03Bean();
			bean.setSabun(rs.getInt("sabun"));
			bean.setName(rs.getString("name"));
			bean.setNalja(rs.getDate("nalja"));
			bean.setPay(rs.getInt("pay"));
			list.add(bean);
		}
	}finally{
		if(rs!=null)rs.close();
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	}
	
%>
	<div id="result">성공하였습니다</div>
	<header>
		<img alt="logo" src="imgs/logo2.jpg"/>
	</header>
	<nav>
		<ul>
			<li><a href="list.jsp">List</a></li>
			<li><a href="#">Menu1</a></li>
			<li><a href="#">Menu2</a></li>
			<li><a href="#">Menu3</a></li>
		</ul>
	</nav>
	<section>
		<h1>Guest03테이블 리스트</h1>
		<table>
			<tr>
				<th>사번</th>
				<th>이름</th>
				<th>날짜</th>
				<th>금액</th>
			</tr>
			<%
			for(Guest03Bean bean :list){
			%>
			<tr>
				<td><%=bean.getSabun() %></td>
				<td><%=bean.getName() %></td>
				<td><%=bean.getNalja() %></td>
				<td><%=bean.getPay() %></td>
			</tr>
			<%} %>
		</table>
		<p><a href="add.jsp">입력</a></p>
	</section>
	<footer>
		<address>
		 (121-854) 서울시 마포구 신수동 63-14 구프라자 b1층
		</address>
		<p>
		Copyright (c) 2017 한빛교육센터 All rights reserved.
		</p>
	</footer>
</body>
</html>





