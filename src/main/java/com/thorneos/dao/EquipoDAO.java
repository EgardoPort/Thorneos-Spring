package com.thorneos.dao;

import java.util.List;

import com.thorneos.entidades.Equipo;

public interface EquipoDAO {
	
public List<Equipo>listar();
	
	public void guardarActualizar(Equipo eq);
	
	public Equipo getEquipoPorId(int id);
	
	public void eliminar (Integer id);
	

}
