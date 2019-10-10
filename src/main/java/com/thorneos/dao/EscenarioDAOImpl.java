package com.thorneos.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thorneos.entidades.Escenario;

@Repository
public class EscenarioDAOImpl implements EscenarioDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Escenario> listar() {
		Criteria c= getSession().createCriteria(Escenario.class);
		return (List<Escenario>) c.list();
	}

	@Override
	public void guardarActualizar(Escenario e) {
		getSession().saveOrUpdate(e);
		
	}

	@Override
	public Escenario getEscenarioPorId(int id) {
		Escenario e=(Escenario) getSession().get(Escenario.class, id);
		return e;
	}

	@Override
	public void eliminar(Integer id) {
		Escenario e=(Escenario) getSession().get(Escenario.class, id);
		getSession().delete(e);
		
	}

}
