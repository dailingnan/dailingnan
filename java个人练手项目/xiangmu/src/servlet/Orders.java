package servlet;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CardDao;
import dao.OrderItemDao;
import dao.OrdersDao;
import order.service.OrderService;

/**
 * Servlet implementation class Orders
 */
@WebServlet("/Orders")
public class Orders extends HttpServlet {
	private static final long serialVersionUID = 1L;
	OrdersDao od = new OrdersDao();
	OrderService orderService = new OrderService();
	CardDao cardDao = new CardDao();
	OrderItemDao oidd = new OrderItemDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Orders() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Date date = new Date();
		//Timestamp timestamp = new Timestamp(date.getTime());
		//生成订单
		String total = "0";
		HashMap<String, Object> list  = (HashMap<String, Object>)request.getSession().getAttribute("user");
		String uid = list.get("uid").toString();
		System.out.println(uid+"______________________________________________________-");
		String oid = "";
		Random r = new Random();
		for(int i = 0; i < 14; i++){
			int x = r.nextInt(9);
			oid += x;
		}
		od.function(oid, total, uid, "aaa");
		
		//生成订单项
		String[] orderitems = request.getParameterValues("shangping");
		
		System.out.println(orderitems.length);
		if(orderitems.length > 0){
			oidd.function1(oid,orderitems);
			cardDao.fonction1(orderitems);
			response.sendRedirect("OrderServlet");
			
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
