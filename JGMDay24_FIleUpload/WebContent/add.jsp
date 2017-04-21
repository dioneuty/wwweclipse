<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
	<title>Insert title here</title>
	<style>
	</style>
	<script type="text/javascript">
	$(document).ready(function(){
		var num=1;
		$('#fileadd>button').click(function(){
			num++;
			var btn='</br><input type="file" name="file'+num+'" id="file'+num+'" />';
			$('#fileadd').append(btn);
		});
	});
	</script>
</head>
	
<body>
	<h1>파일업로드</h1>
	<!-- 파일업로드는 반드시 post방식으로 전송해야 한다 -->
	<!-- enctype는 반드시 multipart/form-data로 보내야 한다 -->
	<form enctype="multipart/form-data" action="upload.hb" method="post">
		<div>
			<label for="sub">제목</label>
			<input type="text" name="sub" id="sub">
		</div>
		<div id="fileadd">
			<label for="file1">첨부파일1</label>
			<button type="button">첨부추가</button></br>
			<input type="file" name="file1" id="file1">
		</div>
		
		<div>
			<button type="submit">전송</button>
			<button type="reset">취소</button>
		</div>
	</form>
</body>
</html>