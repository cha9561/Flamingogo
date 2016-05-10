package com.recommend.dao;

public class RestaurantVO {
   private String starNum;
   private String title;
   private String sector;
   private String image; 
   private String msg;
   private String brief;
   private String tel;
   private String addr;
   private String hpaddr;
   private String openhour;
   private String price;
   private int rank;
   private String url;
   
   public String getUrl() {
	return url;
}
public void setUrl(String url) {
	this.url ="http://www.siksinhot.com"+url;
}
public String getBrief() {
      return brief;
   }
   public void setBrief(String brief) {
      this.brief = brief;
   }
   public int getRank() {
      return rank;
   }
   public void setRank(int rank) {
      this.rank = rank;
   }
   public String getTitle() {
      return title;
   }
   public void setTitle(String title) {
      this.title = title;
   }
   public String getStarNum() {
      return starNum;
   }
   public void setStarNum(String starNum) {
      this.starNum = starNum;
   }
   public String getSector() {
      return sector;
   }
   public void setSector(String sector) {
      this.sector = sector;
   }
   public String getImage() {
      return image;
   }
   public void setImage(String image) {
      this.image = image;
   }
   public String getMsg() {
      return msg;
   }
   public void setMsg(String msg) {
      this.msg = msg;
   }
   public String getTel() {
      return tel;
   }
   public void setTel(String tel) {
      this.tel = tel;
   }
   public String getAddr() {
      return addr;
   }
   public void setAddr(String addr) {
      this.addr = addr;
   }
   public String getHpaddr() {
      return hpaddr;
   }
   public void setHpaddr(String hpaddr) {
      this.hpaddr = hpaddr;
   }
   public String getOpenhour() {
      return openhour;
   }
   public void setOpenhour(String openhour) {
      this.openhour = openhour;
   }
   public String getPrice() {
      return price;
   }
   public void setPrice(String price) {
      this.price = price;
   }
}