package com.thorneos.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thorneos.entidades.Disciplina;

@Repository
public class DisciplinaDAOImpl implements DisciplinaDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@SuppressWarnings("unchecked")
	public List<Disciplina> listar() {
		Criteria c = getSession().createCriteria(Disciplina.class);
		return (List<Disciplina>) c.list(); 
	}

	public void guardar_actualizar(Disciplina dis) {
		getSession().saveOrUpdate(dis);
	}

	public Disciplina obtenerPorId(int id) {
		Disciplina dis = (Disciplina) getSession().get(Disciplina.class, id);
		return dis;
	}

	public void eliminar(int id) {
		Disciplina dis = (Disciplina) getSession().get(Disciplina.class, id);
		getSession().delete(dis);
	}
}
