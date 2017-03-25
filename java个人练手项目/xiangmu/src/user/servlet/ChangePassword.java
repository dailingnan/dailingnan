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
 * Servlet implementation class ChangePassword
 */
@WebServlet("/ChangePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
    UserService userService = new UserService();   
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String fpassword = request.getParameter("fpassword");
		String npassword = request.getParameter("npassword");
		String vc = request.getParameter("vc");
		HttpSession session = request.getSession();
		String vc1 = (String) session.getAttribute("session_vcode");
		System.out.println(username+"|"+fpassword+"|"+npassword+"|"+vc1+"|"+vc);
		System.out.println(vc1.equalsIgnoreCase(vc));
		if(vc1.equalsIgnoreCase(vc)){
			System.out.println(vc1.equalsIgnoreCase(vc));
			System.out.println(userService.finduser(username, fpassword));
			if(userService.finduser(username, fpassword)!=null){
				System.out.println(userService.userUpdatePassword(username, npassword)==1);
				if(userService.userUpdatePassword(username, npassword)==1){
				response.setCharacterEncoding("utf-8");
				session.setAttribute("msg", "修改成功，请重新登录！");
				session.setMaxInactiveInterval(1);
				response.sendRedirect("denglu.jsp");
				}
			}else{
				response.setCharacterEncoding("utf-8");
				session.setAttribute("msg", "修改失败，用户名或密码错误！");
				response.sendRedirect("cpassword.jsp");
			}
		}else{
			response.setCharacterEncoding("utf-8");
			session.setAttribute("msg", "验证码错误！请重新输入");
			response.sendRedirect("cpassword.jsp");
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
