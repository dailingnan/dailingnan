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
 * Servlet implementation class ServletChangeUpdate
 */
@WebServlet("/ServletChangeUpdate")
public class ServletChangeUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sf="";
		String gid=(String) request.getSession().getAttribute("gid");
		response.setContentType("utf-8");
		request.setCharacterEncoding("utf-8");
		DiskFileItemFactory factory=new DiskFileItemFactory();
		ServletFileUpload in=new ServletFileUpload(factory);
		try {
			List<FileItem> list=in.parseRequest(request);
			String image=list.get(0).getName();
			if(image.endsWith(".png") || image.endsWith(".jpg")){
			String sql="update goods set image="+"'"+image+"'"+" where gid="+"'"+gid+"'";
			int u=DBtool.exeUpdate(sql);
			response.sendRedirect("ServletChangeGraphic");
			}else{
				sf="不是图片文件";
				response.getWriter().print(sf);
				request.getRequestDispatcher("webs/change.jsp").forward(request, response);
			}
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
