package com.thorneos.dao;

import java.util.List;

import com.thorneos.entidades.Torneo;

public interface TorneoDao {
	public List<Torneo> lista();
	
	public void guardar_actualizar(Torneo d);
	
	public Torneo getTorneoPorId(int id);
	
	public void eliminar(int id);
}