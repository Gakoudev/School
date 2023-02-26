package com.groupeisi.dao;

import java.util.List;

import javax.ejb.Local;

import com.groupeisi.entities.Student;

@Local
public interface IStudentLocal {
	
	public List<Student> liste();
	public int add(Student student);
	public Student one(int id);
	public int update(Student student);
	public int delte(int id);

}
