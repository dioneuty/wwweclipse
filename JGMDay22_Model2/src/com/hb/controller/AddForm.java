package com.hb.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addhb
 */
@WebServlet("/add.hb")
public class AddForm extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub'
		System.out.println("addForm");
		RequestDispatcher rd = request.getRequestDispatcher("add.jsp");
		rd.forward(request, response);
	}

}
