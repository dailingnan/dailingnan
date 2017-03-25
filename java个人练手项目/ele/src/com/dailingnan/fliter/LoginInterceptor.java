package com.dailingnan.fliter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dailingnan.pojo.UserBean;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		// TODO Auto-generated method stub
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		HttpSession session = (HttpSession) ((HttpServletRequest)request).getSession();
		UserBean user=(UserBean)session.getAttribute("user");
		if(user==null){
			session.setAttribute("msg", "Äú»¹Î´µÇÂ½£¬ÇëµÇÂ¼");
			//((HttpServletResponse)response).sendRedirect("/ele/ele/denglu.jsp");
			return "login";
		}
		arg0.invoke();
		return null;
	}
	
}
