package order.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import order.service.OrderService;
import user.User;

/**
 * Servlet implementation class OrderServlet5
 */
@WebServlet("/OrderServlet5")
public class OrderServlet5 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String oid;
    OrderService orderService = new OrderService();
    User user = new User();   
  
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		oid = request.getParameter("oid");
		System.out.println(oid);
		System.out.println(orderService.finditem(oid));
		if(orderService.finditem(oid)!=null){
			HttpSession session = request.getSession();
			user.setUid("1");
			user.setUsername("´÷ÁëÄÏ");
			user.setPassword("123456");
			user.setNumber("15580106740");
			
			session.setAttribute("order", orderService.finditem(oid));
			session.setAttribute("user", user);
			response.sendRedirect("houtai/tab/tab9.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
