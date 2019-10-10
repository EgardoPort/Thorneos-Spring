package com.thorneos.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thorneos.dao.EscenarioDAO;
import com.thorneos.entidades.Escenario;

@Service
@Transactional
public class EscenarioServiceImpl implements EscenarioService{
	
	EscenarioDAO escenarioDAO;
	
    @Autowired
	public void setEscenarioDAO(EscenarioDAO escenarioDAO) {
		this.escenarioDAO = escenarioDAO;
	}

	@Override
	public List<Escenario> listar() {
		return escenarioDAO.listar();
	}

	@Override
	public void guardarActualizar(Escenario e) {
		escenarioDAO.guardarActualizar(e);
		
	}

	@Override
	public Escenario getEscenarioPorId(int id) {
		return escenarioDAO.getEscenarioPorId(id);
	}

	@Override
	public void eliminar(Integer id) {
		escenarioDAO.eliminar(id);
		
	}

}
