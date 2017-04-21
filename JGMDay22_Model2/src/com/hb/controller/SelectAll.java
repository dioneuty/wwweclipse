package com.hb.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.Guest01Dao;
import com.hb.model.Guest01Dto;

@WebServlet("/index.hb")
public class SelectAll extends HttpServlet {
//	controller -> view객체&model객체 제어

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		////model 모듈 조작
		Guest01Dao dao = new Guest01Dao();
		ArrayList<Guest01Dto> list = dao.selectAll();
		
		////view 모듈 위임
		
		request.setAttribute("alist", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("/list.jsp");
		rd.forward(request, response);
		//list.jsp를 뷰로서 가져와서 활용할 뿐(아웃소싱)이지 실행은 서블릿에서 한다.
		//실행할 때 list.jsp가 아니라 index.hb로 실행해야 한다. 
	}

}