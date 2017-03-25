package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import util.DBtool;

/**
 * Servlet implementation class ServletUpdate
 */
@WebServlet("/ServletUpdate")
public class ServletUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String gid=(String) request.getSession().getAttribute("gid");
		String simage=(String) request.getSession().getAttribute("image");
		response.setContentType("utf-8");
		request.setCharacterEncoding("utf-8");
		DiskFileItemFactory factory=new DiskFileItemFactory();
		ServletFileUpload in=new ServletFileUpload(factory);
		try {
			List<FileItem> list=in.parseRequest(request);
			double price=Double.parseDouble(list.get(0).getString("utf-8"));
			String gintroduce=list.get(1).getString("utf-8");
			String image=list.get(2).getName();
			if(image==""){
				image=simage;
			}
			String d=list.get(3).getString("utf-8");
			char cid=d.charAt(0);
			String sql="update goods set"+" price="+price+","+"gintrodue="+"'"+gintroduce+"'"+","+"image="+"'"+image+"'"+","+"cid="+"'"+cid+"'"+" where gid="+"'"+gid+"'";
			int i=DBtool.exeUpdate(sql);
			
			response.sendRedirect("ZShangping");
			
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
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
