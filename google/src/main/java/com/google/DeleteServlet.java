package com.google;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.dao.impl.MarkerDaoImpl;
import com.google.dao.impl.MarkersCategoryDaoImpl;
import com.google.entity.Marker;
import com.google.entity.MarkersCategory;

public class DeleteServlet extends HttpServlet {
	
	MarkerDaoImpl markerDao = new MarkerDaoImpl();
	MarkersCategoryDaoImpl categoryDao = new MarkersCategoryDaoImpl();
	Marker marker = null;
	MarkersCategory category = null;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String idString;
		marker = null;
		int id = 0;
		String type = req.getParameter("type");
		
		switch(type) {
		
		case "marker":
		
			idString = req.getParameter("id");
			id = Integer.parseInt(idString);
			marker = markerDao.getByPK(id);
			markerDao.delete(marker);

		case "category":
			idString = req.getParameter("id");
			id = Integer.parseInt(idString);
			category = categoryDao.getByPK(id);
			categoryDao.delete(category);
			break;
	}
		

			resp.sendRedirect("explore.jsp");
	}

}
