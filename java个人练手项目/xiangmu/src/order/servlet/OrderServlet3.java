package order.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import order.service.OrderService;

@WebServlet("/OrderServlet3")
public class OrderServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	OrderService  orderService = new OrderService();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String oid =request.getParameter("oid");
		String state = request.getParameter("state");
		if(state.equals("0")){
			orderService.delete(oid);
			response.sendRedirect("OrderServlet");
		}else{
			response.sendRedirect("OrderServlet");
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
