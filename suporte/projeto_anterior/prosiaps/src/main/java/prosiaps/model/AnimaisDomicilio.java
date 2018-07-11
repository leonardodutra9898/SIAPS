package prosiaps.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tb_cadastro_animais_domicilio")
public class AnimaisDomicilio implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long id;
	private String AnimaisDomicilio;
	private String descricao;
	private Date datacadastro;

	@Id
	@GeneratedValue
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	@Column(name="animais_domicilio")
	public String getAnimaisDomicilio() {
		return AnimaisDomicilio;
	}

	public void setAnimaisDomicilio(String animaisDomicilio) {
		AnimaisDomicilio = animaisDomicilio;
	}

	@Column(name="descricao")
	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	@Column(name="data_cadastro")
	public Date getDatacadastro() {
		return datacadastro;
	}

	public void setDatacadastro(Date datacadastro) {
		this.datacadastro = datacadastro;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
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
		AnimaisDomicilio other = (AnimaisDomicilio) obj;
		if (id != other.id)
			return false;
		return true;
	}

}
