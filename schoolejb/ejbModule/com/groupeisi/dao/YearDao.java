package com.groupeisi.dao;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.groupeisi.entities.Year;

@Stateless
public class YearDao implements IYearLocal,IYearRemote{

	// Lister tout les etudiants inscrit durant une année
	@PersistenceContext(unitName="SCHOOL_UP")
	private EntityManager em;

	@Override
	public List<Year> liste() {
		
		return em.createQuery("select y from Year y").getResultList();
	}

	@Override
	public int add(Year year) {
		
		int ok=0;
		try {
			em.persist(year);
			ok=1;
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}
	@Override
	public Year one(int id) {
		
		return em.find(Year.class,id);
	}

	@Override
	public int update(Year year) {
		int ok=0;
		try {
			em.merge(year);
			ok=1;
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}

	@Override
	public int delte(int id) {
		Year year = this.one(id);
		int ok=0;
		try {
			em.remove(year);
			ok=1;
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}

}
