package com.thorneos.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thorneos.dao.EquipoDAO;
import com.thorneos.entidades.Equipo;

@Service
@Transactional
public class EquipoServiceImpl implements EquipoService {
	
	EquipoDAO equipoDAO;

	@Autowired
	public void setEquipoDAO(EquipoDAO equipoDAO) {
		this.equipoDAO = equipoDAO;
	}
	
	
	@Override
	public List<Equipo> listar() {
		return equipoDAO.listar();
	}

	@Override
	public void guardarActualizar(Equipo eq) {
		equipoDAO.guardarActualizar(eq);
		
	}

	@Override
	public Equipo getEquipoPorId(int id) {
		return equipoDAO.getEquipoPorId(id);
	}

	@Override
	public void eliminar(Integer id) {
		equipoDAO.eliminar(id);
		
	}

}

