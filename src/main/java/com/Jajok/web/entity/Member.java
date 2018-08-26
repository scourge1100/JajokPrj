package com.Jajok.web.entity;

public class Member {
	String id;
	String name;
	String email;
	String pwd;
	String regDate;
	
	public Member() {
		
	}

	public Member(String id, String name, String email, String pwd, String regDate) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.pwd = pwd;
		this.regDate = regDate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
}
