package com.hb.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

@WebServlet("/upload.hb")
public class UploadResult extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		//enc="multpart/form-data" from 'add.jsp'
		
		//String path="C:\\wwwEclipse\\JGMDay24_FIleUpload\\WebContent\\uploads";
		/*C:\wwwEclipse\.me...s*/
		//위의 절대경로는 너무 자주 바뀌어서 사용하기 힘들다. 
		
		String path=req.getRealPath("uploads");
		System.out.println(path);
		//MultipartRequest mr=new MultipartRequest(req, path); 기존의 파일을 덮어씌우기 한다.
		//MultipartRequest mr=new MultipartRequest(req, path, (1024*1024)*2);// 1024 : 킬로바이트 1024*1024 : 메가바이트
		
		FileRenamePolicy policy=new DefaultFileRenamePolicy();
		MultipartRequest mr=new MultipartRequest(req, path, 1024*1024*100, policy);
		
		//파일 업로드는 bytestream으로 수행 중, 그러므로 byte로 쪼개고 UTF-8로 재조합
		String tmp=mr.getParameter("sub");
		String sub=new String(tmp.getBytes("8859_1"),"UTF-8");
		System.out.println("제목은 "+sub);
		
		//1024*1024*50 == 50mb
		/*
		1. 파일이름을 가져와야 한다.
		2. 파일경로 (올리는 경로와 톰캣이 임시적으로 가져가는 경로가 다르고 갱신이 제 때 이뤄지지 않아 에러가 뜬다)
		3. 파일사이즈(파일 사이즈를 제한하는 방법)&똑같은 파일이름일 때 (똑같은 파일 이름일 때 덮어쓰기하는 문제)
		4. 서버가 본래의 파일명도 알고 있어야 한다.
		5. 한글 파일명이 깨진다면? 
		6. 여러 파일명을 읽어들이려면?
		*/
		String filename=null;
		String origin=null;
		
		ArrayList<String> names=new ArrayList<String>();
		ArrayList<String> origins=new ArrayList<String>();
		
		Enumeration<String> fnames=mr.getFileNames();
		while (fnames.hasMoreElements()) {
			String file=fnames.nextElement();
			filename = mr.getFilesystemName(file);
			origin = mr.getOriginalFileName(file);
			names.add(filename);
			origins.add(origin);
			System.out.println(filename+": "+origin);
		}
		
		System.out.println("fnames: "+names);
		System.out.println("origins: "+origins);
		req.setAttribute("fnames", names);
		req.setAttribute("origins", origins);
		/*String fname=mr.getFilesystemName("file");
		String origin=mr.getOriginalFileName("file");
		System.out.println(fname);
		System.out.println(origin);*/
		
		/*req.setAttribute("fname", filename);
		req.setAttribute("origin", orgin); //본래의 파일명, 1og1.jpg 1og2.jpg 처럼 임의로 변경된 파일명과 상관없이 본래의 파읾명
		req.getRequestDispatcher("download.jsp").forward(req, resp);*/
	}
}
