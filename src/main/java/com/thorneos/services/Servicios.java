package com.thorneos.services;

import java.util.List;

import javax.persistence.Entity;

public interface Servicios {
	public List<Entity> listar();
	public void guardar_actualizar(Object obj);
	public Object obtenerPorId(int id);
	public void eliminar(int id);
}
