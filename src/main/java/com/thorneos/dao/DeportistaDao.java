package com.thorneos.dao;

import java.util.List;

import com.thorneos.entidades.Deportista;

public interface DeportistaDao {
	public List<Deportista> lista();
	
	public void guardar_actualizar(Deportista d);
	
	public Deportista getDeportistaPorId(int id);
	
	public void eliminar(int id);
}
