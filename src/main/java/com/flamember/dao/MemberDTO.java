package com.flamember.dao;
/*
 *   ID
PWD
NAME
SEX
BIRTH
TEL
POST
ADDR1
ADDR2
LOGCOUNT
REGDATE
 */
import java.util.*;
public class MemberDTO {

  private String id;
  private int id_no;
  private String pwd;
  private String name;
  private String sex;
  private String profile_picture;
  private String birth;
  private String tel;
  private String email;/*
  private String email1;
  private String email2;*/
  private Date regdate;
  private int logcount;
 /* private String tel1;
  private String tel2;
  private String tel3;*/
  private int admin_no;
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public int getId_no() {
	return id_no;
}
public void setId_no(int id_no) {
	this.id_no = id_no;
}
public String getPwd() {
	return pwd;
}
public void setPwd(String pwd) {
	this.pwd = pwd;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getSex() {
	return sex;
}
public void setSex(String sex) {
	this.sex = sex;
}
public String getProfile_picture() {
	return profile_picture;
}
public void setProfile_picture(String profile_picture) {
	this.profile_picture = profile_picture;
}
public String getBirth() {
	return birth;
}
public void setBirth(String birth) {
	this.birth = birth;
}
public String getTel() {
	return tel;
}
public void setTel(String tel) {
	this.tel = tel;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public Date getRegdate() {
	return regdate;
}
public void setRegdate(Date regdate) {
	this.regdate = regdate;
}
public int getLogcount() {
	return logcount;
}
public void setLogcount(int logcount) {
	this.logcount = logcount;
}
public int getAdmin_no() {
	return admin_no;
}
public void setAdmin_no(int admin_no) {
	this.admin_no = admin_no;
}
  

  

}





