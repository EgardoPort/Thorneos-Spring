package com.thorneos.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thorneos.dao.DisciplinaDAO;
import com.thorneos.entidades.Disciplina;

@Service
@Transactional
public class DisciplinaServiceImpl implements DisciplinaService{

	DisciplinaDAO disDAO;
	
	@Autowired
	public void setDisDAO(DisciplinaDAO disDAO) {
		this.disDAO = disDAO;
	}
	
	public List<Disciplina> listar() {
		return disDAO.listar();
	}

	public void guardar_actualizar(Disciplina dis) {
		disDAO.guardar_actualizar(dis);
	}

	public Disciplina obtenerPorId(int id) {
		return disDAO.obtenerPorId(id);
	}

	public void eliminar(int id) {
		disDAO.eliminar(id);
	}
}
