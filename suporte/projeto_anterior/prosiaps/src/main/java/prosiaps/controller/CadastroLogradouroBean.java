package prosiaps.controller;

import java.io.Serializable;
import java.util.List;

import javax.faces.bean.ViewScoped;

import javax.inject.Named;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


import prosiaps.model.Logradouro;

import prosiaps.model.Bairro;

@Named
@ViewScoped

public class CadastroLogradouroBean implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Logradouro logradouro;
	
	private List<Bairro> bairros;
	
	public CadastroLogradouroBean(){
		logradouro = new Logradouro();
	}
	
	public void Salvar(){
		
	}
	
	public void inicializar(){
		//System.out.print("leonardo dutra...");
		
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("siaps");
		EntityManager manager = factory.createEntityManager();
		
		
		bairros = manager.createQuery("from Bairro", Bairro.class).getResultList();
		
		//bairros.setBairros();
		
		manager.close();
	}

	public Logradouro getLogradouro() {
		return logradouro;
	}

	public void setLogradouro(Logradouro logradouro) {
		this.logradouro = logradouro;
	}

	public List<Bairro> getBairros() {
		return bairros;
	}

	public void setBairros(List<Bairro> bairros) {
		this.bairros = bairros;
	}


	

}
