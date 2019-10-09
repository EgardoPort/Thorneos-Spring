package com.thorneos.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thorneos.dao.DetalleDeportistaDAO;
import com.thorneos.entidades.DetalleDeportista;

@Service
@Transactional
public class DDeportistaServiceImpl implements DDeportistaService{

	@Autowired
	DetalleDeportistaDAO ddDAO;
	
	public DetalleDeportistaDAO getDdDAO() {
		return ddDAO;
	}

	@Override
	public List<DetalleDeportista> listar() {
		return ddDAO.listar();
	}

	@Override
	public void guardar_actualizar(DetalleDeportista dd) {
		ddDAO.guardar_actualizar(dd);
	}

	@Override
	public DetalleDeportista getPorId(int id) {
		return ddDAO.getPorId(id);
	}

	@Override
	public void eliminar(int id) {
		ddDAO.eliminar(id);
	}
}
