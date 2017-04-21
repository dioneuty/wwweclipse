<%@page import="com.hb.model.Guest01Dto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width-device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<style>
	</style>
</head>
<%
	Guest01Dto dto=(Guest01Dto)request.getAttribute("bean");
%>
<body>
	<h1>수정페이지</h1>
	<form action="update.hb" method="post">
		<p>
			<label for="sabun">사번</label>
			<input type="text" name="sabun" id="sabun" value="<%=dto.getSabun()%>" readonly="readonly"/> <!-- readonly: 읽기 전용, 파라미터값 넘어 가게 -->
		</p>
		<p>
			<label for="name">이름</label>
			<input type="text" name="name" id="name" value="<%=dto.getName()%>"/> 
		</p>
		<p>
			<label for="nalja">날짜</label>
			<input type="text" id="nalja" value="<%=dto.getNalja()%>" disabled="disabled"/> <!-- disabled: 읽기 전용, 파라미터값 넘어가지 못하게 -->
		</p>
		<p>
			<label for="pay">금액</label>
			<input type="text" name="pay" id="pay" value="<%=dto.getPay()%>"/> 
		</p>
		<p>
			<input type="submit" value="수정"> 
			<input type="reset" value="취소"> 
		</p>
	</form>
</body>
</html>