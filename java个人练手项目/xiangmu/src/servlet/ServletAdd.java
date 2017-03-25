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
import util.UUid;

/**
 * Servlet implementation class ServletAdd
 */
@WebServlet("/ServletAdd")
public class ServletAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAdd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("utf-8");
		request.setCharacterEncoding("utf-8");
		DiskFileItemFactory factory=new DiskFileItemFactory();
		ServletFileUpload in=new ServletFileUpload(factory);
		try {
			List<FileItem> list=in.parseRequest(request);
			String gid=list.get(0).getString("utf-8");
			double price=Double.parseDouble(list.get(1).getString("utf-8"));
			String gintroduce=list.get(2).getString("utf-8");
			String image=list.get(3).getName();
			String d=list.get(4).getString("utf-8");
			char cid=d.charAt(0);
			String sf="";
			if(image.endsWith(".png") || image.endsWith(".jpg")){
			String sql="insert into goods(gid,price,gintrodue,image,cid)values("+"'"+gid+"'"+","+price+","+"'"+
			gintroduce+"'"+","+"'"+image+"'"+","+"'"+cid+"'"+")";
			int i=DBtool.exeUpdate(sql);
			response.sendRedirect("ZShangping");
			}else{
				sf="文件不是图片";
				response.getWriter().print(sf);
				request.getRequestDispatcher("/xiangmu/webs/add.jsp").forward(request, response);
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
