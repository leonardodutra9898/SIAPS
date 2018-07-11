package prosiaps.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tb_cadastro_tratamento_agua")
public class TratamentoAgua implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long id;
	private String FormaTratamentoAgua;
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
	
	@Column(name="forma_tratamento_agua")
	public String getFormaTratamentoAgua() {
		return FormaTratamentoAgua;
	}
	public void setFormaTratamentoAgua(String formaTratamentoAgua) {
		FormaTratamentoAgua = formaTratamentoAgua;
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
		TratamentoAgua other = (TratamentoAgua) obj;
		if (id != other.id)
			return false;
		return true;
	}
	
	
}
