package com.hibernate_examples.connection;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class ConnectionFactory {
	
	private static EntityManagerFactory factory;
	
	public static void startConnection(){
		if(factory == null)
			factory = Persistence.createEntityManagerFactory("hibernate-examples");
	}
	
	public static void stopConnection(){
		if(factory != null)
			factory.close();
	}
	
	public static EntityManager getConnection(){
		startConnection();
		
		return factory.createEntityManager();
	}
}
