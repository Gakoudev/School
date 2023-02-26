package com.groupeisi.dao;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.groupeisi.entities.Inscription;

@Stateless
public class InscriptionDao implements IInscriptionLocal,IInscriptionRemote{

	@PersistenceContext(unitName="SCHOOL_UP")
	private EntityManager em;

	@Override
	public List<Inscription> liste() {
		
		return em.createQuery("select c from Inscription c").getResultList();
	}

	@Override
	public int add(Inscription inscription) {
		
		int ok=0;
		try {
			em.persist(inscription);
			ok=1;
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}

	@Override
	public Inscription one(int id) {
		return em.find(Inscription.class,id);
	}

	@Override
	public int update(Inscription inscription) {

		int ok=0;
		try {
			em.merge(inscription);
			ok=1;
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}

	@Override
	public int delte(int id) {
		Inscription inscription = this.one(id);
		int ok=0;
		try {
			em.remove(inscription);
			ok=1;
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}

}
