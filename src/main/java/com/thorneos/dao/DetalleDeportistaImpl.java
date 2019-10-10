//package com.thorneos.dao;
//
//import java.util.List;
//
//import org.hibernate.Criteria;
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Repository;
//
//import com.thorneos.entidades.DetalleDeportista;
//
//@Repository
//public class DetalleDeportistaImpl implements DetalleDeportistaDAO{
//
//	@Autowired
//	SessionFactory sessionFactory;
//	
//	public Session getSession() {
//		return sessionFactory.getCurrentSession();
//	}
//
//	@SuppressWarnings("unchecked")
//	public List<DetalleDeportista> listar() {
//		Criteria c = getSession().createCriteria(DetalleDeportista.class);
//		return c.list();
//	}
//
//	@Override
//	public void guardar_actualizar(DetalleDeportista dd) {
//		getSession().saveOrUpdate(dd);
//	}
//
//	@Override
//	public DetalleDeportista getPorId(int id) {
//		DetalleDeportista dd = (DetalleDeportista) getSession().get(DetalleDeportista.class, id);
//		return dd;
//	}
//
//	@Override
//	public void eliminar(int id) {
//		DetalleDeportista dd = (DetalleDeportista) getSession().get(DetalleDeportista.class, id);
//		getSession().delete(dd);
//	}
//}
