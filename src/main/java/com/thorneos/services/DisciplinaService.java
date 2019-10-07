package com.thorneos.services;

import java.util.List;

import com.thorneos.entidades.Disciplina;

public interface DisciplinaService {
	public List<Disciplina> listar();
	public void guardar_actualizar(Disciplina dis);
	public Disciplina obtenerPorId(int id);
	public void eliminar(int id);
}
