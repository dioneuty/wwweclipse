package com.hb.am;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
			System.out.println("웹페이지를 이곳에 출력");

			
//			<%@ page language="java" contentType="text/html; charset=UTF-8"
//				    pageEncoding="UTF-8"%>
			resp.setContentType("text/html; charset=UTF-8");
			resp.setCharacterEncoding("UTF-8");
			PrintWriter out=resp.getWriter();
			
			out.println("<!doctype html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">");
			out.println("<meta name=\"viewport\" content=\"width-device-width, initial-scale=1.0\">");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1>안녕하세요</h1>");
			out.println("<form action=\"ex02.html\" method=\"post\">");
			out.println("<p>");
			out.println("<label>id:</label>");
			out.println("<input type=\"text\" name=\"id\">");
			out.println("</p>");
			out.println("<p>");
			out.println("<input type=\"submit\" value=\"보내기\">");
			out.println("</p>");
			out.println("</form>");
			out.println("</body>");
			out.println("</html>");
			
			out.close();
		}
	}
