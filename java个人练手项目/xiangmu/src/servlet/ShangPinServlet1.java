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
 * Servlet implementation class ShangPinServlet1
 */
@WebServlet("/ShangPinServlet1")
public class ShangPinServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ShangPingDao spd = new ShangPingDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShangPinServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HashMap<String,Object> hm = new HashMap<String,Object>();
		hm = (HashMap<String, Object>) request.getSession().getAttribute("user");
		String uid = hm.get("uid").toString();
		String gid = request.getParameter("gid");
		String count = request.getParameter("count");
		ArrayList<HashMap<String,Object>> al = spd.function3(gid);
		if(al.size() ==0){
			spd.function1(gid, count,uid);
		}else{
			int x = Integer.parseInt(count)+(int)al.get(0).get("count");
			count = x+"";
			spd.function4(gid, count);
		}
		
		response.sendRedirect("ShangPingServlet?gid="+gid);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
