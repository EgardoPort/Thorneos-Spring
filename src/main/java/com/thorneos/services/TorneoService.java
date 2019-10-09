package com.thorneos.services;

import java.util.List;

import com.thorneos.entidades.Torneo;

public interface TorneoService {
	
	public List<Torneo> lista();
	
	public void guardar_actualizar(Torneo t);
	
	public Torneo getTorneoPorId(int id);
	
	public void eliminar(int id);
}
