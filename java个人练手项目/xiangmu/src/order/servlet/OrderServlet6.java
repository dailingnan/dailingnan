package order.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import order.service.OrderService;


@WebServlet("/OrderServlet6")
public class OrderServlet6 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    OrderService orderService = new OrderService();
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String iid = request.getParameter("iid");
		ArrayList<HashMap<String, Object>> list3 = orderService.finditem1(iid);
		if(list3!=null){
			HttpSession session = request.getSession();
			session.setAttribute("list3", list3);
			response.sendRedirect("houtai/tab/tab8.jsp");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
