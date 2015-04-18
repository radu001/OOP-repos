package com.google;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.dao.impl.MarkersCategoryDaoImpl;
import com.google.entity.MarkersCategory;
import com.google.exception.DaoException;

public class AddServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String title, description;
		boolean visibility = false;
		String requestType = req.getParameter("requestType");
		
		switch(requestType) {
		case "addCategory":
		
		title = req.getParameter("title");

		if(req.getParameter("visibility") != null)
		if(req.getParameter("visibility").equals("on"))
		visibility = true;
		
		description = req.getParameter("description");
		
		MarkersCategoryDaoImpl categoryDao = new MarkersCategoryDaoImpl();
		MarkersCategory categoryT = new MarkersCategory(0, title, description, visibility);

			try {
				categoryDao.insert(categoryT);
				System.out.println("insert succes");
			} catch (DaoException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			resp.sendRedirect("add.jsp");
			break;
			
			
		case "addMarker":
			
			break;
	}
		
	}

	
	
}
