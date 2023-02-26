package com.groupeisi.dao;

import java.util.List;

import javax.ejb.Local;

import com.groupeisi.entities.Inscription;

@Local
public interface IInscriptionLocal {
	
	public List<Inscription> liste();
	public int add(Inscription inscription);
	public Inscription one(int id);
	public int update(Inscription inscription);
	public int delte(int id);

}
