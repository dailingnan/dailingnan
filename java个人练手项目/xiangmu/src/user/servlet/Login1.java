package user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.sevice.UserService;



/**
 * Servlet implementation class Login1
 */
@WebServlet("/Login1")
public class Login1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserService userService = new user.sevice.UserService();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username;
		String password;
		String vc;
		HttpSession session = request.getSession();
		username = request.getParameter("username");
		password = request.getParameter("password");
		vc = request.getParameter("vc");
		String vc1 = (String)session.getAttribute("session_vcode");
		
		if(vc1.equalsIgnoreCase(vc)){
			if(userService.finduser(username, password)!=null){
				System.out.println(userService.finduser(username, password));
				session.setAttribute("user", userService.finduser(username, password));
				session.setAttribute("msg", "");
				String url = response.encodeURL("webs/index.jsp");
				response.sendRedirect(url);
			}else{
				response.setCharacterEncoding("utf-8");
				session.setAttribute("msg", "登录失败，用户名或密码错误！");
				response.sendRedirect("denglu.jsp");
			}
		}else{
			response.setCharacterEncoding("utf-8");
			session.setAttribute("msg", "验证码错误！请重新输入");
			response.sendRedirect("denglu.jsp");
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
