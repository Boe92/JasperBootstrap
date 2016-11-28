package com.alfasoft.entita;
import java.sql.Blob;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class BustaPaga {
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int id;
	private String nome;
	private String cognome;
	private double importo;
	private Date data;
	private Blob image;
	
	public BustaPaga() {}

	public BustaPaga(String nome, String cognome, double importo, Date data) {
		this.nome = nome;
		this.cognome = cognome;
		this.importo = importo;
		this.data = data;
	}
	
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public double getImporto() {
		return importo;
	}
	public void setImporto(double importo) {
		this.importo = importo;
	}
	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
	}

	public Blob getImage() {
		return image;
	}

	public void setImage(Blob image) {
		this.image = image;
	}
	
	
}
