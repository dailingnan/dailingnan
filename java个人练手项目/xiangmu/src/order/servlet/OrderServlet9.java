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

/**
 * Servlet implementation class OrderServlet9
 */
@WebServlet("/OrderServlet9")
public class OrderServlet9 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    OrderService orderService = new OrderService();   
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String oid = request.getParameter("oid");
		System.out.println(oid+"!!!!!!!!!!!^^^");
		String state = request.getParameter("state");
		HttpSession session = request.getSession();
		ArrayList<HashMap<String, Object>> orderitemlist =orderService.finditems(oid);
		ArrayList<HashMap<String, Object>> orderid =orderService.findorder(oid);
		System.out.println(orderid);
		ArrayList<HashMap<String, Object>> goodslist = new ArrayList<HashMap<String, Object>>();
		for(int i =0;i<orderitemlist.size();i++){
			String gid = (String) orderitemlist.get(i).get("gid");
			HashMap<String, Object> row = new HashMap<String, Object>();
			row = orderService.findgoods(gid);
			goodslist.add(row);
		}
		System.out.println(goodslist);
		session.setAttribute("goodslist", goodslist);
		session.setAttribute("orderid", orderid);
		session.setAttribute("orderitemlist", orderitemlist);
		response.sendRedirect("dingdan3.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
