package com.thorneos.services;

import java.util.List;

import com.thorneos.entidades.Persona;

public interface PersonaService {
	
	public List<Persona> listar();
	public void guardar_actualizar(Persona per);
	public Persona obtenerPorId(int id);
	public void eliminar(int id);
}
