package com.hibernate_examples.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.hibernate_examples.connection.ConnectionFactory;

@WebListener
public class ConnectionListener implements ServletContextListener {

    public void contextDestroyed(ServletContextEvent sce)  { 
    	ConnectionFactory.stopConnection();
    }

    public void contextInitialized(ServletContextEvent sce)  { 
         ConnectionFactory.startConnection();
    }
	
}
