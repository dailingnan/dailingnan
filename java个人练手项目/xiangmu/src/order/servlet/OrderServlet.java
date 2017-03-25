package order.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Response;

import order.service.OrderService;
import user.User;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String uid ;
      OrderService orderService = new OrderService();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		HashMap<String, Object> list = (HashMap<String, Object>)session.getAttribute("user");
		System.out.println(list+"_______");
		uid = list.get("uid").toString();
		ArrayList<HashMap<String, Object>> orderlist = orderService.find(uid);
		
		ArrayList<HashMap<String, Object>> orderitemlist = new ArrayList<HashMap<String, Object>>();
		for(int i=0;i<orderlist.size();i++){
			String oid = orderlist.get(i).get("oid").toString();
			HashMap<String, Object> row = new HashMap<String, Object>();
			row = orderService.findorderitem(oid);
			orderitemlist.add(row);
		}
		ArrayList<HashMap<String, Object>> goodslist1 = new ArrayList<HashMap<String, Object>>();
		System.out.println(orderitemlist+"!!!!!!!");
		for(int i =0;i<orderitemlist.size();i++){
			String gid = (String) orderitemlist.get(i).get("gid");
			HashMap<String, Object> row = new HashMap<String, Object>();
			row = orderService.findgoods(gid);
			goodslist1.add(row);
		}
		System.out.println(goodslist1);
		session.setAttribute("goodlist1", goodslist1);
		System.out.println(uid+"____________--");
		if(orderService.find(uid)!=null){
			session.setAttribute("order", orderService.find(uid));
			
			response.sendRedirect("dingdan2.jsp");
		}
		
		
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
	
	

}
