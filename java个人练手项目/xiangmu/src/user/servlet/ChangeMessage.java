package user.servlet;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import user.sevice.UserService;

/**
 * Servlet implementation class ChangeMessage
 */
@WebServlet("/ChangeMessage")
public class ChangeMessage extends HttpServlet {
	private static final long serialVersionUID = 1L;
    UserService userService = new UserService();   
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		HttpSession session = request.getSession();
		HashMap<String, Object> list = userService.finduser(name, pwd);
		if(list!=null){
			session.setAttribute("message",list );
			response.sendRedirect("houtai/tab/tab5.jsp");
			
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
