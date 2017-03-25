package servlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.DBtool;

/**
 * Servlet implementation class SerachServlet
 */
@WebServlet("/SerachServlet")
public class SerachServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SerachServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String search=request.getParameter("search");
		HttpSession session=request.getSession();
		session.setAttribute("search",search);
		if(search!=""){
		String sql="select * from goods where gid like'%"+search+"%'";
		List<Map<String,Object>> goodList=DBtool.exeQuery(sql);
		request.getSession().setAttribute("goodList",goodList);
		request.getRequestDispatcher("webs/search.jsp").forward(request, response);
		}else{
			response.sendRedirect("webs/zongshangpin.jsp");
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
