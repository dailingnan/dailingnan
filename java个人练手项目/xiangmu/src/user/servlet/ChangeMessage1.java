package user.servlet;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.sevice.UserService;

/**
 * Servlet implementation class ChangeMessage1
 */
@WebServlet("/ChangeMessage1")
public class ChangeMessage1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserService userService = new UserService();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uid = request.getParameter("uid");
		String username = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		String mobile_number = request.getParameter("mobile_number");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		System.out.println(mobile_number+"^^"+name+"^^"+address+"^^"+uid+"^^"+pwd);
		if(userService.addusermessage1(mobile_number, name, address, uid, pwd)==1){
			HttpSession session = request.getSession();
			HashMap<String, Object> list = userService.finduser1(username);
			if(list!=null){
				session.setAttribute("message",list );
				session.setAttribute("msg100", "保存成功");
				response.sendRedirect("houtai/tab/tab5.jsp");
				
			}
		}else{
			HttpSession session = request.getSession();
			HashMap<String, Object> list = userService.finduser1(username);
			session.setAttribute("message",list );
			session.setAttribute("msg100", "保存失败");
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
