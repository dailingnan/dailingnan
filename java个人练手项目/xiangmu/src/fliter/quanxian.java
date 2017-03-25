package fliter;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class QuanxianFliter
 */
@WebFilter(initParams={
		@WebInitParam( name = "without_jsp", value = "denglu.jsp,zhuce.jsp,Regist,Login1,Verify")       },
		urlPatterns="/*jsp"
)
public class quanxian implements Filter {

	String p;
	
	public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpSession session = (HttpSession) ((HttpServletRequest)request).getSession();
		System.out.println(session);
		String url = (String) ((HttpServletRequest)request).getServletPath();
		HashMap<String, Object> list=(HashMap<String, Object>)session.getAttribute("user");
		System.out.println(list);
		System.out.println(url);
		String[] without = p.split(",");
		Boolean iswithout = false;
		for(int i=0;i<without.length;i++){
			if(url.contains(without[i])){
				iswithout = true;
			}
		}
		System.out.println(iswithout);
		if(iswithout){
			System.out.println("过滤通过");
		}else{
		if(list==null){
			System.out.println(list+"过滤不通过");
			session.setAttribute("msg", "请还未登陆，请登录");
			((HttpServletResponse)response).sendRedirect("denglu.jsp");
			return ;
			
			}
		
		}
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	 p = fConfig.getInitParameter("without_jsp");
	 System.out.println("as");
	 System.out.println(p);
	}

}
