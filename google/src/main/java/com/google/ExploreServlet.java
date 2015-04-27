package com.google;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.dao.impl.MarkersCategoryDaoImpl;
import com.google.entity.MarkersCategory;

public class ExploreServlet extends HttpServlet {
	MarkersCategoryDaoImpl categoryDao = new MarkersCategoryDaoImpl();
	List<MarkersCategory> categories = null;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();

		try {
			categories = categoryDao.getAll();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		session.setAttribute("categories", categories);
		req.getRequestDispatcher("/WEB-INF/explore.jsp").forward(req, resp);
	}

}
