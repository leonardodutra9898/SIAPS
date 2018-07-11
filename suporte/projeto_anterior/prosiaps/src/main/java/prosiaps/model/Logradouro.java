package prosiaps.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tb_cadastro_logradouro")
public class Logradouro implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long id;
	private String logradouro;
	private String numero;
	private String complemento;
	private String cidade;
	private String uf;
	private String cep;
	private String bairro;

	private Date datacadastro;

	private Date data_ultima_alteracao;
	
	@Id
	@GeneratedValue
		public long getId() {
			return id;
		}

		public void setId(long id) {
			this.id = id;
		}
	
	@Column(name="logradouro")
	public String getLogradouro() {
		return logradouro;
	}

	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}

	@Column(name="num")
	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	@Column(name="complemento")
	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	@Column(name="cidade")
	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	@Column(name="uf")
	public String getUf() {
		return uf;
	}

	public void setUf(String uf) {
		this.uf = uf;
	}

	@Column(name="cep")
	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	@Column(name="id_bairro")
	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	@Column(name="data_cadastro")
	public Date getDatacadastro() {
		return datacadastro;
	}

	public void setDatacadastro(Date datacadastro) {
		this.datacadastro = datacadastro;
	}
	
	

	@Column(name="data_ultima_alteracao")
	public Date getData_ultima_alteracao() {
		return data_ultima_alteracao;
	}

	public void setData_ultima_alteracao(Date data_ultima_alteracao) {
		this.data_ultima_alteracao = data_ultima_alteracao;
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
		Logradouro other = (Logradouro) obj;
		if (id != other.id)
			return false;
		return true;
	}

}
