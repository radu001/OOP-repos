package com.google;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.google.dao.impl.MarkerDaoImpl;
import com.google.dao.impl.MarkersCategoryDaoImpl;
import com.google.entity.Marker;
import com.google.entity.MarkersCategory;
import com.google.exception.DaoException;

public class GoogleMaps extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		
		
		
		
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
		String json = "";
		if (br != null) {
			json = br.readLine();
		}
		
		System.out.print(json);
		String requestStr = null;
		JSONArray arr = null;
		
		try {
			JSONObject obj = new JSONObject(json);
			arr = obj.getJSONArray("data");
			requestStr = arr.getJSONObject(0).getString("request");
			System.out.println(requestStr);
			
		} catch (JSONException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
		
		

		switch(requestStr) {
		
		//get Categories
		case "getCategories":


			 JSONObject jsonResp      = new JSONObject();
			 JSONArray  categoriesJson = new JSONArray();
			 JSONObject categoryJson;
			 try
			 {
				 
				MarkersCategoryDaoImpl categoryDao = new MarkersCategoryDaoImpl();
				List<MarkersCategory> categories = null;
				categories = categoryDao.getAll();
				
				for(MarkersCategory cat : categories) {
					categoryJson = new JSONObject();
			    	categoryJson.put("CategoryName", cat.getName());
			    	categoryJson.put("CategoryId", cat.getId());
		
			    	categoriesJson.put(categoryJson);
				}
				
				jsonResp.put("Categories", categoriesJson);
				
				 response.setContentType("application/json");
				 response.getWriter().write(jsonResp.toString());
				 
			 }
			 catch (JSONException jse)
			 { 

			 } catch (DaoException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			break;
			
			//get Markers
		case "getMarkers": 
			 JSONObject jsonResp2      = new JSONObject();
			 JSONArray  markersJson = new JSONArray();
			 JSONObject markerJson;
			 
			try {
				String fkStr = arr.getJSONObject(0).getString("fk");
				int fkInt = Integer.parseInt(fkStr);
				MarkerDaoImpl markerDao = new MarkerDaoImpl();
				List<Marker> markers = markerDao.getByFK(fkInt);
				
				
				for(Marker marker : markers) {
					markerJson = new JSONObject();
					
			    	markerJson.put("Name", marker.getName());
			    	markerJson.put("Id", marker.getId());
			    	markerJson.put("Description", marker.getDescription());
			    	markerJson.put("IconUrl", marker.getIconUrl());
			    	markerJson.put("Site", marker.getSite());
			    	markerJson.put("Latitude", marker.getLatitude());
			    	markerJson.put("Longitude", marker.getLongitude());
			    	markerJson.put("Route", marker.getRoute().getJSONString());
			    			    	
			    	markersJson.put(markerJson);
				}
				
				jsonResp2.put("Markers", markersJson);
				
				
				 response.setContentType("application/json");
				 response.getWriter().write(jsonResp2.toString());
	
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (DaoException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				
			break;
			
		default:
			break;
		}
		
		

	}
}
