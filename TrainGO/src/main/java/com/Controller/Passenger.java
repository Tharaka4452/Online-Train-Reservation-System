package com.Controller;

public class Passenger {

	 int id;
	 String fname;
	 String lname;
	 String username;
	 String email;
	 String phoneNumber;
	 String address;
	 String password;
	 
	 
	 
	@Override
	public String toString() {
		return "Passenger [id=" + id + ", fname=" + fname + ", lname=" + lname + ", username=" + username + ", email="
				+ email + ", phoneNumber=" + phoneNumber + ", address=" + address + ", password=" + password + "]";
	}
	public Passenger(String fname, String lname, String username, String email, String phoneNumber, String address,
			String password) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.username = username;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.password = password;
	}
	public Passenger() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Passenger(int id, String fname, String lname, String username, String email, String phoneNumber,
			String address, String password) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.username = username;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
