package com.hb.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(urlPatterns={"/ex09.hb"})

//어노테이션을 통해 urlmapping 정보를 web.xml로 보냄
@WebServlet("/ex09.hb") 
public class Ex09 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html; charset=UTF-8"); 
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out=resp.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<h1>Ex09 has been initiated</h1>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	}

}
