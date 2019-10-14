package com.thorneos.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thorneos.entidades.Persona;

@Repository
public class PersonaDAOImpl implements PersonaDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@SuppressWarnings("unchecked")
	public List<Persona> listar() {
		Criteria c = getSession().createCriteria(Persona.class);
		return (List<Persona>) c.list();
	}

	public void guardar_actualizar(Persona per) {
		getSession().saveOrUpdate(per);
	}

	public Persona obtenerPorId(int id) {
		Persona per = (Persona) getSession().get(Persona.class, id);
		return per;
	}

	public void eliminar(int id) {
		Persona per = (Persona) getSession().get(Persona.class, id);
		getSession().delete(per);
	}
	
	public Persona loginPersona(Persona per)
	{
		Transaction tx = getSession().beginTransaction();
		String hql = "From com.thorneos.entidades AS P WHERE P.usuario = ? AND P.clave = ?";
		
		Query consulta = getSession().createQuery(hql);
		
		consulta.setParameter(0, per.getUsuario());
		consulta.setParameter(1, per.getClave());
		
		per = (Persona) consulta.uniqueResult();
		
		tx.commit();
		
		getSession().close();
		return per;
	}
}
