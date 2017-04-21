package com.hb.user.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hb.user.model.UserDao;

//@WebServlet("/user/result.hb") web.xml 파일에 설정하는 것으로 대체
public class LoginResult extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String id=req.getParameter("id");
		String pw=req.getParameter("pw");
		int result=0;
		
		//web.xml에 initparameter로 driver, url ,user, password 정보를 기입함
		Enumeration<String> initParam=getInitParameterNames();
		while (initParam.hasMoreElements()) {
			System.out.println(getInitParameter(initParam.nextElement()));

		}
		String driver=getInitParameter("driver"); //"com.mysql.jdbc.Driver";
		String url=getInitParameter("url");//"jdbc:mysql://localhost:3306/testdb";
		String user=getInitParameter("user");//"scott";
		String password=getInitParameter("password");//"tiger";
		try {
			UserDao dao = new UserDao(driver,url,user,password);
			result=dao.selectChk(id,pw);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//////////session
		HttpSession session=req.getSession();
		//////////
		if(result>0){
			session.setAttribute("id", id);
			session.setAttribute("result", true);
			resp.sendRedirect("../index.html");
		}else{
			session.setAttribute("result", false);			
			req.getRequestDispatcher("/err.jsp").forward(req, resp);
		}
	}
}
