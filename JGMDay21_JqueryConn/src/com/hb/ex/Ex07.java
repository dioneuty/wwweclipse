package com.hb.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex07 extends Ex06{ //HttpServlet 구조 참고
	//get일 때만 내용이 뜬다. doPost 메소드가 작동하지 않는다.
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html; charset=UTF-8"); 
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out=resp.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<h1>doGet</h1>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	}
}
