package com.groupeisi.entities;

import java.io.Serializable;
import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Student implements Serializable{
	
	private static final long serialVersionUID = 1L;

	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

    @Column(nullable = false)
	private String firstname;

    @Column(nullable = false)
	private String lastname;

    @Column(nullable = false)
	private String birthday;
    
    @Column(nullable = false)
	private String phone;
    
	public Student() {
		super();
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	

}
