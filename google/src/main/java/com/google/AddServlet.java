package com.google;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.dao.impl.MarkerDaoImpl;
import com.google.dao.impl.MarkersCategoryDaoImpl;
import com.google.entity.Marker;
import com.google.entity.MarkersCategory;
import com.google.exception.DaoException;

public class AddServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String title = "", description = "";
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
			title = req.getParameter("title");
			description = req.getParameter("description");
			String category = req.getParameter("ptype");
			String latitude = req.getParameter("latitude");
			String longitude = req.getParameter("longitude");
			String route = req.getParameter("route");
			String site = req.getParameter("webSite");
			String iconUrl = req.getParameter("iconUrl");
			String imageUrl = req.getParameter("imageUrl");
			
			Marker m = new Marker(0, title,description,imageUrl, iconUrl, site,  Double.parseDouble(latitude), Double.parseDouble(longitude),
					route,Integer.parseInt(category));
			
			MarkerDaoImpl markerDao = new MarkerDaoImpl();
			try {
				markerDao.insert(m);
			} catch (DaoException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			System.out.println(title);
			System.out.println(description);
			System.out.println(category);
			System.out.println(latitude);
			System.out.println(longitude);
			System.out.println(route);
			System.out.println(site);
			System.out.println(iconUrl);
			System.out.println(imageUrl);
			break;
	}
		
	}

	
	
}
