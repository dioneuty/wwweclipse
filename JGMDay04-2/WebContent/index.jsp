<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
	PreparedStatement pstmt;
	ResultSet rs;
%>
<body>
<%
	ArrayList list=new ArrayList();
	String sql="select * from lec_emp";
	Connection conn=Oradb.getConnection();
	try{
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next()){
			Sawon sa=new Sawon();
			sa.sabun=rs.getInt("sabun");
			sa.name=rs.getString("name");
			sa.nalja=rs.getDate("nalja");
			sa.pay=rs.getInt("pay");
			list.add(null);
		}
	}finally{
		if(rs!=null)rs.close();
		if(pstmt!=null)pstmt.close();
	}

%>

</body>
</html>