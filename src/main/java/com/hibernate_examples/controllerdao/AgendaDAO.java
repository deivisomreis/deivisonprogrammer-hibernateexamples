package com.hibernate_examples.controllerdao;

import java.util.List;

import javax.persistence.EntityManager;

import com.hibernate_examples.connection.ConnectionFactory;
import com.hibernate_examples.model.Agenda;

public class AgendaDAO implements AgendaInterfaceDAO{
	
	private static EntityManager manager;

	@Override
	public void insert(Agenda a) {
		if(a != null){
			try{
				manager = ConnectionFactory.getConnection();
				manager.getTransaction().begin();
				manager.persist(a);
				manager.getTransaction().commit();
			}
			catch(Exception e){
				System.out.println(e.getMessage());
				e.printStackTrace();
			}
			finally {
				manager.close();
			}
		}
		
	}

	@Override
	public void update(Agenda a) {
		if(a != null){
			try{
				manager = ConnectionFactory.getConnection();
				manager.getTransaction().begin();
				manager.merge(manager.contains(a) ? a : manager.merge(a));
				manager.getTransaction().commit();
			}
			catch(Exception e){
				System.out.println(e.getMessage());
				e.printStackTrace();
			}
			finally {
				manager.close();
			}
		}
	}

	@Override
	public void remove(Agenda a) {
		if(a != null){
			try{
				manager = ConnectionFactory.getConnection();
				manager.getTransaction().begin();
				manager.remove(manager.contains(a) ? a : manager.merge(a));
				manager.getTransaction().commit();
			}
			catch(Exception e){
				System.out.println(e.getMessage());
				e.printStackTrace();
			}
			finally {
				manager.close();
			}
		}
		
	}

	@Override
	public Agenda getAgenda(Long id) {
		 if(id != null && id > 0){
			 try{
				 manager = ConnectionFactory.getConnection();
				 return manager.find(Agenda.class, id);
			 }
			 catch(Exception e){
				 System.out.println(e.getMessage());
				 e.printStackTrace();
				 return null;
			 }
			 finally {
				manager.close();
			}
		 }
		 
		 return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Agenda> lista(Integer id) {
		try{
			manager = ConnectionFactory.getConnection();
			if(id != null && id >= 0){
				return manager.createQuery("from Agenda order by id desc")
						.setFirstResult((id * 10))
						.setMaxResults(10)
						.getResultList();
			}
			
			return manager.createQuery("from Agenda order by id desc")
					.setFirstResult(0)
					.setMaxResults(10)
					.getResultList();
		}
		catch(Exception e){
			System.out.println(e.getMessage());
			e.printStackTrace();
			
			return null;
		}
		finally {
			manager.close();
		}
	}
	
	public int paginas(){
		manager = ConnectionFactory.getConnection();
		
		int registros = manager.createQuery("from Agenda").getResultList().size();
		
		manager.close();
		
		int paginas = registros / 10;
		
		if(registros % 10 == 0)
			return paginas;
		else
			return paginas++;
	}
	
}
