package com.tour.dao;
import java.util.*;
/*
 buyno  NUMBER,
 id  VARCHAR2(20)
 pno NUMBER 
 pname VARCHAR2
 amount NUMBER
 orderdate DATE
 status NUMBER(1)
 rdate VARCHAR2(20)
 price NUMBER
 */
public class BuyVO {
	private int buyno;
	private String id;
	private int pno;
	private String pname;
	private int amount;
	private Date orderdate;
	private int status;
	private String rdate;
	private int price;
	public int getBuyno() {
		return buyno;
	}
	public void setBuyno(int buyno) {
		this.buyno = buyno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public Date getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
}
