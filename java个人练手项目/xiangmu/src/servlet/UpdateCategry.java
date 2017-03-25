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
 * Servlet implementation class UpdateCategry
 */
@WebServlet("/UpdateCategry")
public class UpdateCategry extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql="select * from category where cid not in('6')";
		List<Map<String,Object>> list=DBtool.exeQuery(sql);
		request.setCharacterEncoding("utf-8");
		request.setAttribute("list",list);
		request.getRequestDispatcher("webs/changeCategry.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
