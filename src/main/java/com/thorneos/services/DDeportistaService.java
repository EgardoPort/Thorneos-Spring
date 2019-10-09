package com.thorneos.services;

import java.util.List;

import com.thorneos.entidades.DetalleDeportista;

public interface DDeportistaService {

	public List<DetalleDeportista> listar();
	public void guardar_actualizar(DetalleDeportista dd);
	public DetalleDeportista getPorId(int id);
	public void eliminar(int id);
}
