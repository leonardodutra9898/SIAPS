//package prosiaps.service;
//
//import java.io.Serializable;
//
//import javax.inject.Inject;
//
//import prosiaps.dao.LogradouroDAO;
//import prosiaps.model.Logradouro;
//
//public class CadastroLogradouroService implements Serializable {
//
//	@Inject
//	private LogradouroDAO logradouroDAO;
//	
//	public void salvar(Logradouro logradouro) throws NegocioException{
//		
//		if(logradouro.getBairro() == null || logradouro.getBairro().trim().equals("")){
//			
//			throw new NegocioException("Nome do Bairro é obrigatório para o cadastro");
//			
//		}
//		
//		this.logradouroDAO.salvar(logradouro);
//		
//	}
//	
//}
