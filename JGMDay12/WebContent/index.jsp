<%@page import="com.hb.dao.Guest03Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.hb.dao.*, com.hb.dto.*, java.util.ArrayList, java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width-device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="css/grid.css">
	<style>
		#table{
			width: 80%;
			margin: 0 auto;
			border: 1px solid #000000;
		}
		#content>table>*{
			border: 1px solid red;
		}
	</style>
</head>
<%!

%>
<body>
<%
	Guest03Dao dao=new Guest03Dao();
	ArrayList<JavaBean> list=dao.selectAll();
%>
	<div class="container">
		
		<div id="header" class="row">
			<div class="col-12 mcol-12">
				<h1>한빛교육센터</h1>
			</div>	
		</div>
		<div id="menu" class="row">
			<div class="col-12">
				<ul>
					<li>menu1</li>
					<li>menu2</li>
					<li>menu3</li>
					<li>menu4</li>
				</ul>
			</div>
		</div>
		
		<div id="content" class="row">
			<div class="col-8 mcol-12">
				<h1>리스트</h1>

				<table>
					<tr>
						<th>사번</th>
						<th>이름</th>
						<th>날짜</th>
						<th>금액</th>
					</tr>
					
					<%for(JavaBean bean:list){ %>
					<tr>
						<td><%=bean.getSabun() %></td>
						<td><%=bean.getName() %></td>
						<td><%=bean.getNalja() %></td>
						<td><%=bean.getPay() %></td>
					</tr>
					<%} %>
				</table>
				
			</div>
			<div class="col-4 mcol-0">
				<ul>
					<li>menu1-1</li>
					<li>menu2-2</li>
					<li>menu3-3</li>
					<li>menu4-4</li>
				</ul>
			</div>
		</div>
		
		<div id="footer" class="row">
			<div class="col-5 mcol-0">
				<p>logo</p>
			</div>
			<div class="col-7 mcol-12">
				<p>한빛ENI : 02-707-1480 / (121-854) 서울시 마포구 신수동 63-14 구프라자 3층</p>
				<p>Copyright (c) 2017 한빛교육센터 All rights reserved.</p>
			</div>
		</div>
		
	</div>
</body>
</html>