package com.thorneos.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thorneos.entidades.Equipo;


@Repository
public class EquipoDAOImpl implements EquipoDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return sessionFactory.getCurrentSession();
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Equipo> listar() {
		Criteria c= getSession().createCriteria(Equipo.class);
		return (List<Equipo>) c.list();
	}

	@Override
	public void guardarActualizar(Equipo eq) {
		getSession().saveOrUpdate(eq);
		
	}

	@Override
	public Equipo getEquipoPorId(int id) {
		Equipo eq=(Equipo) getSession().get(Equipo.class, id);
		return eq;
	}

	@Override
	public void eliminar(Integer id) {
		Equipo eq=(Equipo) getSession().get(Equipo.class, id);
		getSession().delete(eq);
	}

}
