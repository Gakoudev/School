package com.groupeisi.dao;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.groupeisi.entities.Student;

@Stateless
public class StudentDao implements IStudentLocal,IStudentRemote{

	//Lister tout les cours suivi par l'etudiant durant l'année en cours
	@PersistenceContext(unitName="SCHOOL_UP")
	private EntityManager em;

	@Override
	public List<Student> liste() {
		
		return em.createQuery("select s from Student s").getResultList();
	}

	@Override
	public int add(Student student) {
		
		int ok=0;
		try {
			em.persist(student);
			ok=1;
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}
	
	@Override
	public Student one(int id) {
		
		return em.find(Student.class,id);
	}

	@Override
	public int update(Student student) {
		int ok=0;
		try {
			em.merge(student);
			ok=1;
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}

	@Override
	public int delte(int id) {
		Student student = this.one(id);
		int ok=0;
		try {
			em.remove(student);
			ok=1;
		}catch(Exception e){
			e.printStackTrace();
		}
		return ok;
	}

}
