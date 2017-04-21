<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

	<form action="login2.jsp" method="post">
		<table align="center">
			<tr>
				<td><label>아이디</label> </td>
				<td><input type="text" name="name"> </td>
			</tr>
			<tr>
				<td><label>비밀번호</label> </td>
				<td><input type="password" name="pay"> </td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="login">
					<input type="reset" value="cancel">
				</td>
			</tr>
		</table>
	</form>
