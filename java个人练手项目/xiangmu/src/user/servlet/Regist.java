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
 * Servlet implementation class Regist
 */
@WebServlet("/Regist")
public class Regist extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserService userService = new UserService();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String vc = request.getParameter("vc");
		
		HttpSession session = request.getSession();
		String vc1 = (String) session.getAttribute("session_vcode");
		System.out.println(username+"|"+password+"|"+vc+"|"+vc1);
		
		System.out.println(vc1.equalsIgnoreCase(vc));
		//System.out.println(userService.adduser(username, password)&&vc1.equalsIgnoreCase(vc));
		if(vc1.equalsIgnoreCase(vc)){
			if(userService.adduser(username, password)){
				session.setAttribute("msg", "ע��ɹ������¼��");
				response.sendRedirect("denglu.jsp");
			}else{
				response.setCharacterEncoding("utf-8");
				session.setAttribute("msg", "ע��ʧ�ܣ����û��Ѵ��ڣ�");
				response.sendRedirect("zhuce.jsp");
			}
		}else{
			response.setCharacterEncoding("utf-8");
			session.setAttribute("msg", "��֤���������������");
			response.sendRedirect("zhuce.jsp");
		}
		
		
		/*if((userService.adduser(username, password))&&(vc1.equalsIgnoreCase(vc))){
			response.sendRedirect("denglu.jsp?msg=ע��ɹ����¼��");
		}else{
			response.setCharacterEncoding("utf-8");
			response.sendRedirect("zhuce.jsp?msg=�˻��Ѵ��ڣ�ע��ʧ��");
		}
		*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
