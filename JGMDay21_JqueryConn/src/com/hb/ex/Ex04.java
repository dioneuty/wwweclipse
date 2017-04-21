package com.hb.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Ex04 extends GenericServlet{ //서블릿에서 미리 만들어진 추상클래스 genericServlet

	@Override
	public void service(ServletRequest req, ServletResponse res)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		res.setContentType("text/html; charset=UTF-8"); 
		res.setCharacterEncoding("UTF-8");
		PrintWriter out=res.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<h1>abcd ex03</h1>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	}

}
