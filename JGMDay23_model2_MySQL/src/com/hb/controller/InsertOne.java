package com.hb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.Guest04DAO;

@WebServlet("/guest/insert.hb")
public class InsertOne extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
//		String name=request.getParameter("name").trim();
//		String sub=request.getParameter("sub").trim();
//		int pay=Integer.parseInt(request.getParameter("pay").trim());
		String[] params=new String[3];
		params[0]=request.getParameter("name").trim();
		params[1]=request.getParameter("sub").trim();
		params[2]=request.getParameter("pay").trim();
		/////// 보안 검사 ////////
		for (int i = 0; i < params.length; i++) {
			if(params[i].equals("")){
				response.setContentType("text/html; charset=UTF-8"); 
				response.setCharacterEncoding("UTF-8");
				String msg="<h1>스크립트 공격 거부</h1>";
				response.getWriter().print(msg);
			
				return;
			}
		}
		/////// 검사 끝 ////////
		String name=params[0];
		String sub=params[1];
		int pay=Integer.parseInt(params[2]);
		Guest04DAO dao=new Guest04DAO();
		int cnt=0;
		try {
			cnt = dao.insertOne(name,sub,pay);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(cnt>0){
			response.sendRedirect("list.hb");
		}else{
			response.setContentType("text/html; charset=UTF-8"); 
			response.setCharacterEncoding("UTF-8");
			String msg="<script type=\"text/javascript\">";
			msg+="window.history.back();";
			msg+="</script>";
			response.getWriter().print(msg);
			return;
		}
	}

}
