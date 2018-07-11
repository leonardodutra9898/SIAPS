package prosiaps.service;

import javax.enterprise.context.ApplicationScoped;
import javax.faces.bean.ManagedBean;

import prosiaps.model.Agendamento;

import java.util.ArrayList;
import java.util.List;
//import java.util.UUID;

@ManagedBean(name = "agendamentoService")
@ApplicationScoped
public class AgendamentoService {

	
	public List<Agendamento> createAgendamentos(int size) {
        List<Agendamento> list = new ArrayList<Agendamento>();
        for(int i = 0 ; i < size ; i++) {
            list.add(new Agendamento("0015", "-", "01/07/16", "Unidade I - Centro", "Cajás", "CE"));
            list.add(new Agendamento("0150", "-", "11/06/16", "Unidade XI - Centro", "Rio de Janeiro", "RJ"));

        }
         
        return list;
    }
	
}
