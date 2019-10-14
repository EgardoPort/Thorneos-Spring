package com.thorneos.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thorneos.dao.PersonaDAO;
import com.thorneos.entidades.Persona;

@Service
@Transactional
public class PersonaServiceImpl implements PersonaService{
	
	PersonaDAO perDAO;
	
	@Autowired
	public void setPerDAO(PersonaDAO perDAO) {
		this.perDAO = perDAO;
	}

	public List<Persona> listar() {
		return perDAO.listar();
	}

	public void guardar_actualizar(Persona per) {
		perDAO.guardar_actualizar(per);
	}

	public Persona obtenerPorId(int id) {
		return perDAO.obtenerPorId(id);
	}

	public void eliminar(int id) {
		perDAO.eliminar(id);	
	}
	
	public Persona loginPersona(Persona per)
	{
		return perDAO.loginPersona(per);
	}
}
