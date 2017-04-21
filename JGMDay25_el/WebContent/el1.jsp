<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<style>
		table {
			width: 80%;
		}
		td {
			border: 1px solid red;
		}	
		#black{
			background-color: black;
		}
	</style>
</head>

<body>
	<h1>EL 표현식</h1>
	<table>
		<tr>
			<td>자료형</td>
			<td>코드</td>
			<td>결과</td>
		</tr>
		<tr>
			<td>문자열</td>
			<td>\${"el로 출력"}</td>
			<td>${"el로 출력"}</td>
		</tr>
		<tr>
			<td>실수</td><td>\${3.14}</td><td>${3.14}</td>
		</tr>
		<tr>
			<td>연산+</td><td>\${100 + 10}</td><td>${100+10}</td>
		</tr>	
		<tr>
			<td>연산-</td><td>\${100 - 10}</td><td>${100-10}</td>
		</tr>
		<tr>
			<td>연산*</td><td>\${100 * 10}</td><td>${100*10}</td>
		</tr>
		<tr>
			<td>연산%</td><td>\${100 % 10}</td><td>${100%10}</td>
		</tr>
		<tr>
			<td>연산/</td><td>\${100 / 10}</td><td>${100/10}</td>		
		</tr>
		<tr>
			<td>연산%</td><td>\${100 mod 10}</td><td>${100 mod 10}</td>
		</tr>
		<tr>
			<td>연산/</td><td>\${100 div 10}</td><td>${100 div 10}</td>		
		</tr>
		<tr>
			<td>연산*</td><td>\${100 * 3,14}</td><td>${100*3.14}</td>
		</tr>
		<tr>
			<td>연산-</td><td>\${100 - 3,14}</td><td>${100-3.14}</td>
		</tr>
		<tr>
			<td>연산+</td><td>\${100 + 3,14}</td><td>${100+3.14}</td>
		</tr>
		<tr>
			<td>연산/</td><td>\${100 / 3,14}</td><td>${100/3.14}</td>
		</tr>
		<tr id="black"></tr>
		<tr>
			<td>boolean</td><td>\${true}</td><td>${true}</td>
		</tr>
		<tr>
			<td>boolean</td><td>\${false}</td><td>${false}</td>
		</tr>
		<tr>
			<td>null</td><td>\${null}</td><td>${null}</td>
		</tr>
		<tr id="black"></tr>
		<tr>
			<td>비교문</td><td>\${5 > 3}</td><td>${5>3}</td>
		</tr>
		<tr>
			<td>비교문</td><td>\${5 < 3}</td><td>${5<3}</td>
		</tr>
		<tr>
			<td>비교문</td><td>\${5 == 3}</td><td>${5 == 3}</td>
		</tr>
		<tr>
			<td>비교문</td><td>\${5 >= 3}</td><td>${5 >= 3}</td>
		</tr>
		<tr>
			<td>비교문</td><td>\${5 gt 3}</td><td>${5 gt 3}</td>
		</tr>
		<tr>
			<td>비교문</td><td>\${5 lt 3}</td><td>${5 lt 3}</td>
		</tr>
		<tr>
			<td>비교문</td><td>\${5 eq 3}</td><td>${5 eq 3}</td>
		</tr>
		<tr>
			<td>비교문</td><td>\${5 ge 3}</td><td>${5 ge 3}</td>
		</tr>

		
	</table>
</body>
</html>