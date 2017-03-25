package order.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import order.service.OrderService;


@WebServlet("/OrderServlet8")
public class OrderServlet8 extends HttpServlet {
	private static final long serialVersionUID = 1L;
     OrderService orderService = new OrderService();  
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String oid =request.getParameter("oid");
		String state =request.getParameter("state");
			
			orderService.updatestate1(oid,state);
			HttpSession session = request.getSession();
			ArrayList<HashMap<String, Object>> list1 = orderService.findall();
			if(list1!=null){
				session.setAttribute("list1", list1);
				response.sendRedirect("houtai/tab/tab2.jsp");
			}
			
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
