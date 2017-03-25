package user.servlet;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.sevice.UserService;

/**
 * Servlet implementation class Messsge
 */
@WebServlet("/Message")
public class Message extends HttpServlet {
	private static final long serialVersionUID = 1L;
    UserService userService = new UserService();  
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username1 = request.getParameter("username1");
		String phone = request.getParameter("phone");
		String address=request.getParameter("address");
		HashMap<String, Object> list = (HashMap<String, Object>)request.getSession().getAttribute("user");
		String name = (String)list.get("username");
		String pwd = (String)list.get("pwd");
		System.out.println(name+"|||"+pwd);
		String uid = list.get("uid").toString();
		
		
		
		if(userService.addusermessage(phone, username1, address, uid)==1){
			request.getSession().setAttribute("user", userService.finduser(name, pwd));
			//response.sendRedirect("message.jsp");
			request.setAttribute("mess", "±£´æ³É¹¦£¡");
			request.getRequestDispatcher("message.jsp").include(request, response);
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
