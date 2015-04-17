package com.google.entity;


public class Marker extends BaseEntity implements Comparable<Marker> {

	private String description;
	private String iconUrl;
	private double latitude;
	private double longitude;
	private String site;
	private Route route;
	private int fk_category;


	public Marker(int idMarker, String title, String description,
			String iconUrl, String site, double latitude, double longitude, Route route, int fk_category) {
		setId(idMarker);
		setName(title);
		this.description = description;
		this.iconUrl = iconUrl;
		this.latitude = latitude;
		this.longitude = longitude;
		this.site = site;
		this.route = route;
		this.fk_category = fk_category;
	}

	public int compareTo(Marker m2) {
		Marker m1 = this;
		int res = String.CASE_INSENSITIVE_ORDER.compare(m1.getName(),
				m2.getName());
		if (res == 0) {
			res = m1.getName().compareTo(m2.getName());
		}
		return res;
	}

	public int getFk_category() {
		return fk_category;
	}

	public void setFk_category(int fk_category) {
		this.fk_category = fk_category;
	}
	
	public Route getRoute() {
		return route;
	}

	public void setRoute(Route route) {
		this.route = route;
	}


	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getIconUrl() {
		return iconUrl;
	}

	public void setIconUrl(String iconUrs) {
		this.iconUrl = iconUrs;
	}

	public String getSite() {
		return site;
	}

	public void setSite(String site) {
		this.site = site;
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}

}