package user.dao;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import util.DBUtils;



/**
 * Application Lifecycle Listener implementation class ListenerDemo
 *
 */
@WebListener
public class ListenerDemo implements ServletContextListener {

    

    public void contextDestroyed(ServletContextEvent arg0)  { 
         // TODO Auto-generated method stub
    }

	
    public void contextInitialized(ServletContextEvent arg0)  { 
         // TODO Auto-generated method stub
    	String user = arg0.getServletContext().getInitParameter("user");
    	String url = arg0.getServletContext().getInitParameter("url");
    	String pwd = arg0.getServletContext().getInitParameter("pwd");
    	String driver = arg0.getServletContext().getInitParameter("driver");
    	DBUtils.init(url, user, pwd, driver);
    }
	
}
