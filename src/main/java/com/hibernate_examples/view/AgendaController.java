package com.hibernate_examples.view;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hibernate_examples.controllerdao.AgendaDAO;
import com.hibernate_examples.model.Agenda;

@Controller
public class AgendaController {
	
	public AgendaController() {
		agendaDAO = new AgendaDAO();
	}
	
	private static AgendaDAO agendaDAO;
	
	@RequestMapping("/cadastro")
	public String cadastro(Model model, Agenda a, String option) {
		if(option != null && option.equals("cadastrar") && a != null && !a.getNome().isEmpty()){
			a.setDataInscricao(new Date());
			agendaDAO.insert(a);			
			model.addAttribute("sucesso", a.getNome() + " cadastrado com sucesso!");
		}
		
		return "cadastro";
	}
	
	@RequestMapping("/lista")
	public String lista(Model model, Integer id) {
		if( id  != null && id >=0){
		model.addAttribute("lista", agendaDAO.lista(id));
		model.addAttribute("paginas", agendaDAO.paginas());
		}
		
		else{
			model.addAttribute("lista", agendaDAO.lista(null));
			model.addAttribute("paginas", agendaDAO.paginas());
		}
		return "lista";
	}
	
	@RequestMapping("/remover")
	public String remover(Model model, Long id) {
		if(id != null && id > 0){
			agendaDAO.remove(agendaDAO.getAgenda(id));
			model.addAttribute("removido", "atividade removida com sucesso!");
		}
		
		return lista(model, null);
	}
	
	@RequestMapping("/editar")
	public String editar(Model model) {
		return null;
	}
	
	@RequestMapping("/finalizar")
	public String finaliar(Model model, Long id) {
		if(id != null && id >0){
			Agenda a = agendaDAO.getAgenda(id);
			a.setDataFinalizacao(new Date());
			a.setStatus(true);
			agendaDAO.update(a);
			
			model.addAttribute("atualizado", a.getNome() + " atualizado com sucesso!");
		}
		
		return lista(model, null);
	}
}
