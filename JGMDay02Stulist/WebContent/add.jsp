<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table>
		<!-- 로고 -->
		<tr>
			<td colspan="6">
				<img alt="logo" src="imgs/logo.jpg">
			</td>
		</tr>
		<!-- 메뉴 -->
		<tr>
			<td>&nbsp;&nbsp;&nbsp;</td>
			<td width="150" bgcolor="#aaaaff"><a href="index.jsp">home</a></td>
			<td width="150" bgcolor="#aaaaff"><a href="add.jsp">입력</a></td>
			<td width="150" bgcolor="#aaaaff"><a href="viewall.jsp">보기</a></td>
			<td width="150" bgcolor="#aaaaff">방명록</td>
			<td>&nbsp;&nbsp;&nbsp;</td>
		</tr>
		<!-- 내용 -->
		<tr>
			<td colspan="6">
				<h1 align="center">입력페이지</h1>
				<form action="addresult.jsp">
				<p align="center">
					<label>이름</label>
					<input type="text" name="name">
				</p>
				<p align="center">
					<label>국어</label>
					<input type="text" name="kor">
				</p>
				<p align="center">
					<label>영어</label>
					<input type="text" name="eng">
				</p>
				<p align="center">
					<label>수학</label>
					<input type="text" name="math">
				</p>
				<p align="center">
					<input type="submit" value="입력">
					<input type="reset" value="취소">
				</p>
				</form>
			
			</td>
		</tr>
		<!-- 꼬리말 -->
		<tr>
			<td colspan="6">
			(주)한빛이엔아이 ｜ 사업자등록번호 : 220-85-43667 ｜ 통신판매신고 : 마포 제 0358호
한빛ENI : 02-707-1480 / (121-854) 서울시 마포구 신수동 63-14 구프라자 3층 / 대표이사 : 염기호
개인정보보호관리책임자 : 허윤
Copyright (c) 2015 한빛교육센터 All rights reserved.
			</td>
		</tr>
	</table>
</body>
</html>