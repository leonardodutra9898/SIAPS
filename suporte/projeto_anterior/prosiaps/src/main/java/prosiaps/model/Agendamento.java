package prosiaps.model;

public class Agendamento {

	private String cd;
	private String info;
	private String data;
	private String est;
	private String cidade;
	private String uf;
	
	
	public Agendamento(String string, String string2, String string3, String string4, String string5, String string6) {
		// TODO Auto-generated constructor stub
		
		this.cd = string;
		this.info = string2;
		this.data = string3;
		this.est = string4;
		this.cidade = string5;
		this.uf = string6;
		
		
		
		
	}


	public String getCd() {
		return cd;
	}


	public void setCd(String cd) {
		this.cd = cd;
	}


	public String getInfo() {
		return info;
	}


	public void setInfo(String info) {
		this.info = info;
	}


	public String getData() {
		return data;
	}


	public void setData(String data) {
		this.data = data;
	}


	public String getEst() {
		return est;
	}


	public void setEst(String est) {
		this.est = est;
	}


	public String getCidade() {
		return cidade;
	}


	public void setCidade(String cidade) {
		this.cidade = cidade;
	}


	public String getUf() {
		return uf;
	}


	public void setUf(String uf) {
		this.uf = uf;
	}

}
