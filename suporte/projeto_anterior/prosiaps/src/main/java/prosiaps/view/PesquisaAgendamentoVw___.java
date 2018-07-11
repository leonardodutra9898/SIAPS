package prosiaps.view;

import java.io.Serializable;
import java.util.List;

import javax.annotation.ManagedBean;
import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;

import prosiaps.model.Agendamento;
import prosiaps.service.AgendamentoService;


@ManagedBean(value="dtPesquisaView")
@ViewScoped
public class PesquisaAgendamentoVw___ implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	private List<Agendamento> agendamentos;
    
    @ManagedProperty("#{agendamentosService}")
    private AgendamentoService service;
 
    @PostConstruct
    public void init() {
        agendamentos = service.createAgendamentos(5);
    }
     
    public List<Agendamento> getAgendamentos() {
        return agendamentos;
    }
 
    public void setService(AgendamentoService service) {
        this.service = service;
    }
	
	
}
