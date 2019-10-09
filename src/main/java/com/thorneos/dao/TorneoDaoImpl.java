package com.thorneos.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thorneos.entidades.Torneo;

@Repository
public class TorneoDaoImpl implements TorneoDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	
	@SuppressWarnings("unchecked")
	public List<Torneo> lista() {
		Criteria c = getSession().createCriteria(Torneo.class);
		return (List<Torneo>) c.list();
	}

	@Override
	public void guardar_actualizar(Torneo t) {
		getSession().saveOrUpdate(t);
		
	}

	@Override
	public Torneo getTorneoPorId(int id) {
		Torneo t = (Torneo) getSession().get(Torneo.class, id);
		return t;
	}

	@Override
	public void eliminar(int id) {
		Torneo t = (Torneo) getSession().get(Torneo.class, id);
		getSession().delete(t);
	}
}