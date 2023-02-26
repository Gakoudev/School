package com.groupeisi.dao;

import java.util.List;

import javax.ejb.Local;

import com.groupeisi.entities.Courses;

@Local
public interface ICoursesLocal {
	
	public List<Courses> liste();
	public int add(Courses courses);
	public Courses one(int id);
	public int update(Courses courses);
	public int delte(int id);

}
