package com.hb.ex;

import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Ex02 implements Servlet{

	ServletConfig servletConfig;

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("servlet init()");
	}

	@Override
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		return servletConfig;
	}

	@Override
	public void service(ServletRequest req, ServletResponse res)
			throws ServletException, IOException {
		System.out.println("Ex02_servlet service()");
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getServletInfo() {
		return "ver 3.0~~";
	}

	@Override
	public void destroy() {
		System.out.println("servlet destroy()");
		// TODO Auto-generated method stub
		
	}

}
