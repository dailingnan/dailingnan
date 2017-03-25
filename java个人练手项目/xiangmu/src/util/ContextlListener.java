package util;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ContextlListener
 *
 */
@WebListener
public class ContextlListener implements ServletContextListener {

    public ContextlListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent e)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent e)  { 
        
    	
    	String url=e.getServletContext().getInitParameter("url1");
    	String driver=e.getServletContext().getInitParameter("driver1");
    	DBtool.init(driver, url);
    }
	
}
