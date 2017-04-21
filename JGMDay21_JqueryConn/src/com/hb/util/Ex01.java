package com.hb.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/myData01.xml")
public class Ex01 extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/xml; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out=response.getWriter();
		//실제 xml소스는 개행이 들어가지 않음, 브라우저 상에서 가독성을 높이기 위해 임의로 개행을 해서 보여주는 것이다.
		out.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>"); //xml은 더블로 쏘아라
		out.println("<data>");
			out.println("<user>");
				out.println("<id>");
					out.println("root");
				out.println("</id>");
				out.println("<pw>");
					out.println(1234);
				out.println("</pw>");
				out.println("<name>");
					out.println("관리자");
				out.println("</name>");
			out.println("</user>");
		out.println("</data>");
		
		out.close();
	}

}
