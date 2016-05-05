package com.squre.dao;

import java.util.Date;

import oracle.sql.CLOB;

public class SqureVO {
	private int content_no;
	private CLOB content;
	private String name;
	private String subject;
	private String pwd;
	private Date regdate;
	private int hit;
	private int hot_no;
	private String user_id;
	public CLOB getContent() {
		return content;
	}
	public void setContent(CLOB content) {
		this.content = content;
	}
	public int getContent_no() {
		return content_no;
	}
	public void setContent_no(int content_no) {
		this.content_no = content_no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
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
	public int getHot_no() {
		return hot_no;
	}
	public void setHot_no(int hot_no) {
		this.hot_no = hot_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
}
