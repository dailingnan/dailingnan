package servlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.DBtool;

/**
 * Servlet implementation class ServletChangeGraphic
 */
@WebServlet("/ServletChangeGraphic")
public class ServletChangeGraphic extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private String sql="select gid,image,cid from goods where cid not in('0','1','2','3','4','5')";
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Map<String,Object>> list=DBtool.exeQuery(sql);
		request.setAttribute("list",list);
		request.setCharacterEncoding("utf-8");
		request.getRequestDispatcher("webs/changeGraphic.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
