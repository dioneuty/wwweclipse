<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <h1>회원가입</h1>
    <form action="result.jsp">
        id:<input type="text" name="id" placeholder="클릭하면 지워짐"><br>
        pw:<input type="text" name="pw"><br>
        취미<br>
        <input type="checkbox" name="hobby" value="1">야구
        <input type="checkbox" name="hobby" value="2">농구
        <input type="checkbox" name="hobby" value="3">배구
        <br>
        직업<br>
        <input type="radio" name="job" values="a">초딩        
        <input type="radio" name="job" values="b">중딩        
        <input type="radio" name="job" values="c">고딩        
        <input type="radio" name="job" values="d">대딩        
        <input type="radio" name="job" values="e">직딩        
        <br>
        학력<br>
        <select name="graduation">
         <optgroup label="저학력">
            <option value="a1">초졸</option>
            <option value="b2">중졸</option>
            <option value="c4" selected>고졸</option>
         </optgroup>
         <optgroup label="고학력">
            <option value="d4">대졸</option>
         </optgroup>
        </select>
        <br>
        하시고 싶은 말씀<br>
        <textarea name="content" rows="5" cols="15"></textarea>
        <input type="submit"  value-"전송">
        <input type="button" value="버튼">
        <input type="reset" value="취소">
    </form>
</body>
</html>