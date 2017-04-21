<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript">
	$(doccument).ready(function(){
		$('a').click(function(){
			/* event.preventDefault(); */
			window.location.href="up.hb?name=log&end=jpg";
			return false;
		});
	});
	
	
	</script>
<!--

//-->
</script>
	<style>
	</style>
</head>

<body>
	<!-- 이미지가 브라우저에서 표시되지 않고 타입을 바꿔서 따로 다운로드 받을 수 있게 하는 방법 -->
	<h1>이미지 다운로드</h1>
	<p>
		<a href="uploads/log.jpg">download</a>
	</p>
</body>
</html>