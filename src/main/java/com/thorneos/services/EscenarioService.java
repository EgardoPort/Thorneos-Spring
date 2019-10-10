package com.thorneos.services;

import java.util.List;

import com.thorneos.entidades.Escenario;

public interface EscenarioService {

public List<Escenario>listar();
	
	public void guardarActualizar (Escenario e);
	
	public Escenario getEscenarioPorId(int id);
	
	public void eliminar (Integer id);
	
}
