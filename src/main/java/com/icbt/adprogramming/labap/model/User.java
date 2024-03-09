package com.icbt.adprogramming.labap.model;

public class User {
    private String name;
    private String email;
    private String contact;
    private String address;
    private String password;
	private int id;
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
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
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

	
	public int getId() {
      
		return id;
    }

    public void setId(int id) {
        this.id = id;
    }
	
	 public User(String name, String email, String contact, String address, String password) {
	        this.name = name;
	        this.email = email;
	        this.contact = contact;
	        this.address = address;
	        this.password = password;
	    }
    // Constructor, getters, setters
}
