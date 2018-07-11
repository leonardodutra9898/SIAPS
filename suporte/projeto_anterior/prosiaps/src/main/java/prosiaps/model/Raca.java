package prosiaps.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tb_cadastro_racas")
public class Raca implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long id;
	private String Raca;
	private String ResumoRaca;
	private Date datacadastro;
	
	@Id
	@GeneratedValue
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	@Column(name="raca")
	public String getRaca() {
		return Raca;
	}
	public void setRaca(String raca) {
		Raca = raca;
	}
	
	@Column(name="raca_resumo")
	public String getResumoRaca() {
		return ResumoRaca;
	}
	public void setResumoRaca(String resumoRaca) {
		ResumoRaca = resumoRaca;
	}
	
	@Column(name="data_cadastro")
	public Date getDatacadastro() {
		return datacadastro;
	}
	public void setDatacadastro(Date datacadastro) {
		this.datacadastro = datacadastro;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (id ^ (id >>> 32));
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Raca other = (Raca) obj;
		if (id != other.id)
			return false;
		return true;
	}
	
	
	
}
