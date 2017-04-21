<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="../css/frame.css"/>
	<style>
	</style>
	<script type="text/javascript" src="../js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('form input').on('click focus',function(){
				/* $(this).val(""); */
				$(this).select();
			});//form input end
			$('form').on( 'submit', function(){
				
				if($('form input').val().trim()==''){
					return false;
				}
				return true;
			});
			$('form').on( 'reset', function(){
				window.location.replace("list.hb")
			});
		});//ready end
	</script>
</head>

<body>
	<%@ include file="template/header.jspf"%>
	<%@ include file="template/menu.jspf"%>	
	<div id="content">
		<h1>입력페이지</h1>
		<form action="insert.hb" method="post">
			<p>
				<label for="">이름</label>
				<input type="text" name="name" id="name"> 
			</p>
			<p>
				<label for="">제목</label>
				<input type="text" name="sub" id="sub" value="제목없음"> 
			</p>
			<p>
				<label for="">금액</label>
				<input type="text" name="pay" id="pay"> 
			</p>
			<p>
				<button type="submit">입력</button>
				<button type="reset">취소</button>
			</p>
		</form>
	</div>
	<%@ include file="template/footer.jspf"%>	
</body>
</html>