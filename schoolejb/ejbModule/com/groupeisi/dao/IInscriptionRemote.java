package com.groupeisi.dao;

import java.util.List;

import javax.ejb.Remote;

import com.groupeisi.entities.Inscription;

@Remote
public interface IInscriptionRemote {
	
	public List<Inscription> liste();
	public int add(Inscription inscription);
	public Inscription one(int id);
	public int update(Inscription inscription);
	public int delte(int id);

}
