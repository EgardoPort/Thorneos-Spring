package com.thorneos.dao;

import java.util.List;

import com.thorneos.entidades.Persona;

public interface PersonaDAO {
	public List<Persona> listar();
	public void guardar_actualizar(Persona per);
	public Persona obtenerPorId(int id);
	public void eliminar(int id);
	public Persona loginPersona(Persona per);
}
