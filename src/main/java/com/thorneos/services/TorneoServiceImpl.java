package com.thorneos.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thorneos.dao.TorneoDao;
import com.thorneos.entidades.Torneo;

@Service
@Transactional
public class TorneoServiceImpl implements TorneoService {
	
	TorneoDao torneoDao;
		
	@Autowired
	public void setTorneoDao(TorneoDao torneoDao) {
		this.torneoDao = torneoDao;
	}

	public List<Torneo> lista() {
		return torneoDao.lista();
	}

	@Override
	public void guardar_actualizar(Torneo t) {
		torneoDao.guardar_actualizar(t);
	}

	@Override
	public Torneo getTorneoPorId(int id) {
		return torneoDao.getTorneoPorId(id);
	}

	@Override
	public void eliminar(int id) {
		torneoDao.eliminar(id);	
	}
}