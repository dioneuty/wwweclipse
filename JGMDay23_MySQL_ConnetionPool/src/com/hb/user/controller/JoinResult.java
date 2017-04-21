package com.hb.user.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.user.model.UserDao;

/**
 * Servlet implementation class JoinResult
 */
@WebServlet(
		urlPatterns = { "/user/member.hb" }, 
		initParams = { 
				@WebInitParam(name = "driver", value = "com.mysql.jdbc.Driver"), 
				@WebInitParam(name = "url", value = "jdbc:mysql://localhost:3306/testdb"), 
				@WebInitParam(name = "user", value = "scott"), 
				@WebInitParam(name = "password", value = "tiger")
		})
public class JoinResult extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int result=0;
		req.setCharacterEncoding("UTF-8");
		String id=req.getParameter("id");
		String pw=req.getParameter("pw");
		String email=req.getParameter("email");
		
		String driver=getInitParameter("driver"); //"com.mysql.jdbc.Driver";
		String url=getInitParameter("url");//"jdbc:mysql://localhost:3306/testdb";
		String user=getInitParameter("user");//"scott";
		String password=getInitParameter("password");
		
		try{
			UserDao dao=new UserDao(driver, url, user, password);
			result=dao.insertOne(id,pw,email);
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{}
		if(result>0){
			req.setAttribute("id", id);
			req.getRequestDispatcher("welcome.jsp").forward(req, resp);
		}else{
			req.getRequestDispatcher("/err.jsp").forward(req, resp);
		}
	}

}
