<%@page import="com.hb.model.Guest04DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" scope="request" class="com.hb.model.Guest04DTO"></jsp:useBean>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="../css/frame.css"/>
	<link rel="stylesheet" type="text/css" href="../css/table.css"/>
	<title>Insert title here</title>
	<style>
		span {
			display: inline-block;
		}
		
		.col1 {
			width: 100px;
			background-color: gray;
		}
		
		.col1+span {
			
		}
</style>
	<script type="text/javascript" src="../js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$('button').click(function(){
			if($(this).text()=='수정'){
				window.location.replace('edit.hb?sabun=<%=dto.getSabun()%>');
			}else if($(this).text()=='삭제'){
					
			}else if($(this).text()=='목록'){
				window.location.replace("list.hb")
			}
		});
	});
	</script>
</head>
<%
	//scope="request" -> guest04dto =(guest04dto)request.getattribute("dto")''
	//scope="page" guest04dto = new guest04dto();
	
	/* Guest04DTO dto=(Guest04DTO)request.getAttribute("dto"); */
%>
<body>
	<!-- 프론트앤드: 주소표시줄 기준 (../), 백앤드: 실제 경로 (/) -->
	<%@ include file = "template/header.jspf" %>
	<%@ include file = "template/menu.jspf" %>
	<div id="content">
		<h1>상세페이지</h1>
		<div>
			<div>
				<span class="col1">제목</span>
				<span><jsp:getProperty name="dto" property="sub"/></span>
			</div>
			<div>
				<span class="col1">사번</span>
				<span><jsp:getProperty name="dto" property="sabun"/></span>
				<span class="col1">이름</span>
				<span><jsp:getProperty name="dto" property="name"/></span>
			</div>			
			<div>
				<span class="col1">날짜</span>
				<span><jsp:getProperty name="dto" property="nalja"/></span>
				<span class="col1">금액</span>
				<span><jsp:getProperty name="dto" property="pay"/></span>
			</div>
			<div>
				<button>수정</button>
				<button>삭제</button>
				<button>목록</button>
			</div>			
		</div>
	</div>
	<%@ include file = "template/footer.jspf" %>
	<script type="text/javascript">
	</script>
</body>

</html>