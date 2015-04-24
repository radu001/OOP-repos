package com.google;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.dao.impl.MarkerDaoImpl;
import com.google.entity.Marker;
import com.google.exception.DaoException;

public class SingleServlet extends HttpServlet{
	MarkerDaoImpl markerDao = new MarkerDaoImpl();
	Marker marker = null;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		HttpSession session=req.getSession();  
		String markerId;
		int id;
		marker = null;
		try {
			markerId = req.getParameter("Id");
			id = Integer.parseInt(markerId);
			System.out.println(id);
			marker = markerDao.getByPK(id);
			
		} catch (DaoException e) {
			System.out.println("exception");
			e.printStackTrace();
		}
		
		if(marker == null) {
			req.getRequestDispatcher("/WEB-INF/explore.jsp").forward(req, resp);
			return;
		}
		
		session.setAttribute("marker", marker);
		//System.out.println("hello");
		req.getRequestDispatcher("/WEB-INF/single.jsp").forward(req, resp);
	}
	

}
