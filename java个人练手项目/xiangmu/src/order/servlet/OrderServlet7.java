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


@WebServlet("/OrderServlet7")
public class OrderServlet7 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	OrderService orderService = new OrderService();
   private String iid;
   private String COUNT;
   private String subtotal;
   private String oid;
   private String gid;
	

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		iid = request.getParameter("iid");
		COUNT = request.getParameter("COUNT");
		subtotal = request.getParameter("subtotal");
		oid = request.getParameter("oid");
		gid = request.getParameter("gid");
		
		System.out.println(iid+"|"+COUNT+"|"+subtotal+"|"+oid+"|"+gid);
		int list4 = orderService.updateitem(iid, COUNT, subtotal, oid, gid);
		if(list4==1){
			
			ArrayList<HashMap<String, Object>> list3 = orderService.finditem1(iid);
			if(list3!=null){
				HttpSession session = request.getSession();
				session.setAttribute("msg4", "您已成功修改");
				session.setAttribute("list3", list3);
			}
			response.sendRedirect("houtai/tab/tab8.jsp");
		}
		
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
