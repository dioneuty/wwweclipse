package com.hb.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/up.hb")
public class Popup extends HttpServlet{
	 @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		 String name = req.getParameter("name");
		 String end = req.getParameter("end");
		 String fname = name + "." + end;
		 String url = "uploads/" + fname;
		 url = req.getRealPath(url);
		 
		 File file = new File(url);
		 
		 resp.setContentType("Application/octet-stream");
		 OutputStream out = resp.getOutputStream();
		 BufferedOutputStream bos = new BufferedOutputStream(out);
		 while(){}
		 out.close();
		 
	}
}
