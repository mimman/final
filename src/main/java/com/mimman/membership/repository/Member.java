package com.mimman.membership.repository;

import java.util.Date;

public class Member {
	private String id;
	private String name;
	private String birth;
	private String email;
	private String address;
	private String nation;
	private String phone;
	private String password;
	private int mileage;
	
	public Member(){}
	public Member(String id,String password,String name,String birth,
			String email,String address,String nation,String phone){
		this.id = id;
		this.password = password;
		this.name = name;
		this.birth = birth;
		this.email = email;
		this.address = address;
		this.nation = nation;
		this.phone = phone;
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
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getMileage() {
		return mileage;
	}
	public void setMileage(int mileage) {
		this.mileage = mileage;
	}
	
	public boolean matchPassword(String password){
		return this.password.equals(password);
	}
	
}
