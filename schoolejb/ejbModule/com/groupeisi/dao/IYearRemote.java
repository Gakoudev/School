package com.groupeisi.dao;

import java.util.List;

import javax.ejb.Remote;

import com.groupeisi.entities.Year;

@Remote
public interface IYearRemote {
	
	public List<Year> liste();
	public int add(Year year);
	public Year one(int id);
	public int update(Year year);
	public int delte(int id);


}
