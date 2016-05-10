package com.squre.dao;

import java.util.Date;

public class ReviewVO {
	private String id;
	private int rootNo;
	private int no;
	private int sex;
	private String content;
	private Date regdate;
	private int hit;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getRootNo() {
		return rootNo;
	}
	public void setRootNo(int rootNo) {
		this.rootNo = rootNo;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
}
