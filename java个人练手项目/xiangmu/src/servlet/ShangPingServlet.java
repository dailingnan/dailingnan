package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ShangPingDao;

/**
 * Servlet implementation class ShangPingServlet
 */
@WebServlet("/ShangPingServlet")
public class ShangPingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ShangPingDao spd = new ShangPingDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShangPingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String gid = request.getParameter("gid");
		ArrayList<HashMap<String,Object>> al = spd.function(gid);
		request.setAttribute("shangpin", al);
		request.getRequestDispatcher("shangping.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
