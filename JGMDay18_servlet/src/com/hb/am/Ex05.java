package com.hb.am;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex05 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("커스텀 확장자");
		
		//클라이언트가 보낸 문자들을 인코딩 설정을 통해 해독하기
				req.setCharacterEncoding("UTF-8");
				
				//출력 없이 바로 다음 페이지로 넘기기
				//resp.sendRedirect("ex01.html");
				//페이지에 출력
				//클라이언트에 보낼 문자들의 인코딩 설정을 utf-8로 맞춤
				resp.setContentType("text/html; charset=UTF-8");
//				resp.setContentType("text/xml; charset=UTF-8");
//				resp.setContentType("text/plain; charset=UTF-8");
//				resp.setContentType("text/javascript");
//				resp.setContentType("image/jpeg");
//				resp.setContentType("image/gif");
//				resp.setContentType("video/mp4");
				resp.setCharacterEncoding("UTF-8");
		
				PrintWriter out=resp.getWriter();
		
		
		out.println("<!doctype html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta http-equiv=\"Content-Type\" content=\"text/plain; charset=UTF-8\">");
		out.println("<meta name=\"viewport\" content=\"width-device-width, initial-scale=1.0\">");
		out.println("</head>");
		out.println("<body>");
		out.println("<p>HTML</p>");	
		out.println("</body>");
		out.println("</html>");
	}
}
