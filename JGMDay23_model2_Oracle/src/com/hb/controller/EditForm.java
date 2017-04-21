package com.hb.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.Guest04DAO;
import com.hb.model.Guest04DTO;

@WebServlet("/guest/edit.hb")
public class EditForm extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int sabun = Integer.parseInt(req.getParameter("sabun"));
		Guest04DAO dao = new Guest04DAO();
		Guest04DTO bean = null;
		try {
			bean = dao.selectOne(sabun);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		req.setAttribute("dto", bean);
		RequestDispatcher rd = req.getRequestDispatcher("/edit.jsp");
		rd.forward(req, resp);
	}

}
