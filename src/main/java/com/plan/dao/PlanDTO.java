package com.plan.dao;

/*
CREATE TABLE location
(
no NUMBER(6),
plan_id VARCHAR2(20),
longitude NUMBER(20,10),
latitude NUMBER(20,10),
city_name VARCHAR(20),
startdate VARCHAR2(10),
image VARCHAR2(50),
CONSTRAINT lc_no_pk PRIMARY KEY(no)
);
*/
public class PlanDTO {
	private int no;
	private String plan_id;
	private String city_name;
	private String image;
	private String startdate;
	private String latitude;
	private String longitude;
	private String latmax;
	private String lngmax;
	
	public String getLatmax() {
		return latmax;
	}
	public void setLatmax(String latmax) {
		this.latmax = latmax;
	}
	public String getLngmax() {
		return lngmax;
	}
	public void setLngmax(String lngmax) {
		this.lngmax = lngmax;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getPlan_id() {
		return plan_id;
	}
	public void setPlan_id(String plan_id) {
		this.plan_id = plan_id;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}

}
