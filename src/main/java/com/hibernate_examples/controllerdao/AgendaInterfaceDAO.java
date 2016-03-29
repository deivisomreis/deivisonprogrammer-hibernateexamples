package com.hibernate_examples.controllerdao;

import java.util.List;

import com.hibernate_examples.model.Agenda;

public interface AgendaInterfaceDAO {
	
	public void insert(Agenda a);
	public void update(Agenda a);
	public void remove(Agenda a);
	public Agenda getAgenda(Long id);
	public List<Agenda> lista(Integer id);

}
