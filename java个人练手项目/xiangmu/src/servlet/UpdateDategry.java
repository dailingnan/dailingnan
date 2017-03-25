package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.DBtool;

/**
 * Servlet implementation class UpdateDategry
 */
@WebServlet("/UpdateDategry")
public class UpdateDategry extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateDategry() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String s=(String) request.getSession().getAttribute("cid");
		String cname=request.getParameter("cname");
		String sql="update category set cname="+"'"+cname+"'"+" where cid="+"'"+s+"'";
		if(cname!=""){
		int u=DBtool.exeUpdate(sql);
		response.setContentType("utf-8");
		response.sendRedirect("UpdateCategry");
		}else{
			request.getRequestDispatcher("webs/updateDatery.jsp").forward(request, response);
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
