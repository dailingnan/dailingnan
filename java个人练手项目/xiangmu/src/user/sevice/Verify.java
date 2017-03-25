package user.sevice;

import java.awt.image.BufferedImage;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Verify")
public class Verify extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 1. ����ͼƬ
		 * 2. ����ͼƬ�ϵ��ı���session����
		 * 3. ��ͼƬ��Ӧ���ͻ���
		 */
		VerifyCode vc = new VerifyCode();
		BufferedImage image = vc.getImage();
		
		request.getSession().setAttribute("session_vcode", vc.getText());//����ͼƬ�ϵ��ı���session��
		System.out.println(vc.getText());
		
		VerifyCode.output(image, response.getOutputStream());
		System.out.println(vc.getText());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
