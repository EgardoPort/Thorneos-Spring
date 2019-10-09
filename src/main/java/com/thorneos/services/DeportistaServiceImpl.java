package com.thorneos.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thorneos.dao.DeportistaDao;
import com.thorneos.entidades.Deportista;

@Service
@Transactional
public class DeportistaServiceImpl implements DeportistaService {
	
	DeportistaDao deportistaDao;
	
	@Autowired
	public void setDeportistaDao(DeportistaDao deportistaDao) {
		this.deportistaDao = deportistaDao;
	}

	public List<Deportista> lista() {
		return deportistaDao.lista();
	}

	public void guardar_actualizar(Deportista d) {
		deportistaDao.guardar_actualizar(d);
		
	}

	public Deportista getDeportistaPorId(int id) {
		return deportistaDao.getDeportistaPorId(id);
	}

	public void eliminar(int id) {
		deportistaDao.eliminar(id);
	}
}
