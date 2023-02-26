package com.groupeisi.dao;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.groupeisi.entities.Courses;

@Stateless
public class CoursesDao implements ICoursesLocal, ICoursesRemote {

	@PersistenceContext(unitName="SCHOOL_UP")
	private EntityManager em;
	@Override
	public List<Courses> liste() {
		
		return em.createQuery("select c from Courses c").getResultList();
	}

	@Override
	public int add(Courses courses) {
		
		int ok=0;
		try {
			em.persist(courses);
			ok=1;
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}

	@Override
	public Courses one(int id) {
		
		return em.find(Courses.class,id);
	}

	@Override
	public int update(Courses courses) {

		int ok=0;
		try {
			em.merge(courses);
			ok=1;
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}

	@Override
	public int delte(int id) {
		Courses courses = this.one(id);
		int ok=0;
		try {
			em.remove(courses);
			ok=1;
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}

}
