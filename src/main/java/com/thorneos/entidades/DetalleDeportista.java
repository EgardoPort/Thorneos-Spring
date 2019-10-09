package com.thorneos.entidades;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name ="detalle_deportista")
public class DetalleDeportista {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@JoinColumn(name="id_deportista", referencedColumnName = "id")
	@OneToMany
	private Deportista IdDeportista;
	@JoinColumn(name="id_disciplina", referencedColumnName = "id")
	@OneToMany
	private Disciplina IdDisciplina;
	
	public DetalleDeportista() {
		IdDeportista = new Deportista();
		IdDisciplina = new Disciplina();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Deportista getIdDeportista() {
		return IdDeportista;
	}

	public void setIdDeportista(Deportista idDeportista) {
		IdDeportista = idDeportista;
	}

	public Disciplina getIdDisciplina() {
		return IdDisciplina;
	}

	public void setIdDisciplina(Disciplina idDisciplina) {
		IdDisciplina = idDisciplina;
	}
}
