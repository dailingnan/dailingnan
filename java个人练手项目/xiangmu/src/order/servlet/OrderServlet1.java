package order.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import order.service.OrderService;

@WebServlet("/OrderServlet1")
public class OrderServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    OrderService orderService = new OrderService();
  
    public OrderServlet1() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String oid =request.getParameter("oid");
		String state =request.getParameter("state");
		
			orderService.updatestate(oid,state);
			response.sendRedirect("OrderServlet");
			
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
