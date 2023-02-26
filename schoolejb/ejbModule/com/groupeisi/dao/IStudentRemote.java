package com.groupeisi.dao;

import java.util.List;

import javax.ejb.Remote;

import com.groupeisi.entities.Student;

@Remote
public interface IStudentRemote {
	
	public List<Student> liste();
	public int add(Student student);
	public Student one(int id);
	public int update(Student student);
	public int delte(int id);

}
