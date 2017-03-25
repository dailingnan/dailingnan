package com.dailingnan.fliter;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dailingnan.pojo.UserBean;

@WebFilter({"/ele/cart.jsp","/ele/gouwuche.jsp","/ele/BesureOrder.jsp","/ele/ele/findAction"
})
public class LoginFilter implements Filter {
	
    /**
     * Default constructor. 
     */
    public LoginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}


	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpSession session = (HttpSession) ((HttpServletRequest)request).getSession();
		UserBean user=(UserBean)session.getAttribute("user");
		if(user==null){
			session.setAttribute("msg", "Äú»¹Î´µÇÂ½£¬ÇëµÇÂ¼");
			((HttpServletResponse)response).sendRedirect("/ele/ele/denglu.jsp");
			return ;
		}
		// pass the request long the filter chain
		chain.doFilter(request, response);
		// TODO Auto-generated method stub
		
	}

	

}