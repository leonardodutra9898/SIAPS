package prosiaps.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tb_cadastro_abastecimento_agua")
public class AbastecimentoAgua implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long id;
	private String abastecimentoTipo;
	private String descricaoAbastecimento;
	private Date datacadastro;

	@Id
	@GeneratedValue
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	@Column(name="abastecimento_agua")
	public String getAbastecimentoTipo() {
		return abastecimentoTipo;
	}

	public void setAbastecimentoTipo(String abastecimentoTipo) {
		this.abastecimentoTipo = abastecimentoTipo;
	}
	@Column(name="descricao")
	public String getDescricaoAbastecimento() {
		return descricaoAbastecimento;
	}

	public void setDescricaoAbastecimento(String descricaoAbastecimento) {
		this.descricaoAbastecimento = descricaoAbastecimento;
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
		AbastecimentoAgua other = (AbastecimentoAgua) obj;
		if (id != other.id)
			return false;
		return true;
	}

}
