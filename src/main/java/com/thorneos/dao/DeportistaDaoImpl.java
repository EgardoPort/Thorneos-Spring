package com.thorneos.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thorneos.entidades.Deportista;
@Repository
public class DeportistaDaoImpl implements DeportistaDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	
	@SuppressWarnings("unchecked")
	public List<Deportista> lista() {
		Criteria c = getSession().createCriteria(Deportista.class);
		return (List<Deportista>) c.list();
	}

	@Override
	public void guardar_actualizar(Deportista t) {
		getSession().saveOrUpdate(t);
		
	}

	@Override
	public Deportista getDeportistaPorId(int id) {
		Deportista d = (Deportista) getSession().get(Deportista.class, id);
		return d;
	}

	@Override
	public void eliminar(int id) {
		Deportista d = (Deportista) getSession().get(Deportista.class, id);
		getSession().delete(d);	
	}
}