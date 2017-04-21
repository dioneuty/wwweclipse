<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
   String id, pw;
   id=request.getParameter("id");
   pw=request.getParameter("pw");
   
   String[] hobby=request.getParameterValues("hobby");
   
   System.out.println(request.getRemoteAddr());
   System.out.println(request.getServerName());
   System.out.println(request.getServerPort());
   System.out.println(request.getRequestURI());
   System.out.println(request.getContextPath());
%>
<h1>id:<%=id %></h1>
<h1>pw:<%=pw %></h1>

<h1>취미:
<%
for(int i=0; i<hobby.length; i++){
   if("1".equals(hobby[i])){
      out.print("야구 ");
   }else if("2".equals(hobby[i])){
      out.print("농구 ");
   }else if("3".equals(hobby[i])){
      out.print("배구 ");
   }
}
%>
</h1>

<h2><%=request.getRemoteAddr() %></h2>

</body>
</html>