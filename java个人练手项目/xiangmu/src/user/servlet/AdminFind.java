package user.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.sevice.UserService;

/**
 * Servlet implementation class AdminFind
 */
@WebServlet("/AdminFind")
public class AdminFind extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserService userService = new UserService();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		HashMap<String, Object> list1 =(HashMap<String, Object>)session.getAttribute("admin");
		String jibie = list1.get("jibie").toString();
		if(jibie.equals("1")){
			ArrayList<HashMap<String, Object>> list = userService.findalladmin();
			if(list!=null){
				session.setAttribute("adminlist", list);
				response.sendRedirect("houtai/tab/tab10.jsp");;
			}	
		}else{
			response.sendRedirect("houtai/tab/tab13.jsp");
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
