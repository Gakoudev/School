package com.groupeisi.dao;

import java.util.List;

import javax.ejb.Local;

import com.groupeisi.entities.Year;

@Local
public interface IYearLocal {
	
	public List<Year> liste();
	public int add(Year year);
	public Year one(int id);
	public int update(Year year);
	public int delte(int id);

}
