<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <h1>ȸ������</h1>
    <form action="result.jsp">
        id:<input type="text" name="id" placeholder="Ŭ���ϸ� ������"><br>
        pw:<input type="text" name="pw"><br>
        ���<br>
        <input type="checkbox" name="hobby" value="1">�߱�
        <input type="checkbox" name="hobby" value="2">��
        <input type="checkbox" name="hobby" value="3">�豸
        <br>
        ����<br>
        <input type="radio" name="job" values="a">�ʵ�        
        <input type="radio" name="job" values="b">�ߵ�        
        <input type="radio" name="job" values="c">���        
        <input type="radio" name="job" values="d">���        
        <input type="radio" name="job" values="e">����        
        <br>
        �з�<br>
        <select name="graduation">
         <optgroup label="���з�">
            <option value="a1">����</option>
            <option value="b2">����</option>
            <option value="c4" selected>����</option>
         </optgroup>
         <optgroup label="���з�">
            <option value="d4">����</option>
         </optgroup>
        </select>
        <br>
        �Ͻð� ���� ����<br>
        <textarea name="content" rows="5" cols="15"></textarea>
        <input type="submit"  value-"����">
        <input type="button" value="��ư">
        <input type="reset" value="���">
    </form>
</body>
</html>