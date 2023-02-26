package com.groupeisi.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Inscription implements Serializable{

	private static final long serialVersionUID = 1L;
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @Column(nullable = false)
    private String details;
    

    @ManyToOne
    @JoinColumn(name = "courses_id") 
    private Courses courses;
    
    @ManyToOne  
    @JoinColumn(name = "student_id") 
    private Student student;
    
    @ManyToOne  
    @JoinColumn(name = "year_id") 
    private Year year;

	public Inscription() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public Courses getCourses() {
		return courses;
	}

	public void setCourses(Courses courses) {
		this.courses = courses;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Year getYear() {
		return year;
	}

	public void setYear(Year year) {
		this.year = year;
	}

}
