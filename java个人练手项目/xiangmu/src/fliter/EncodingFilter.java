package fliter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class EncodingFilter
 */

@WebFilter(initParams=@WebInitParam(name = "characterEncoding", value = "utf-8"),
urlPatterns="/*")
public class EncodingFilter implements Filter {
	private String characterEncoding = null;

	public void destroy() {
		
	}


	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpSession session =((HttpServletRequest)request).getSession();
		request.setCharacterEncoding(characterEncoding);
		response.setCharacterEncoding(characterEncoding);
		chain.doFilter(request, response);
	}


	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
		//获取参数
		characterEncoding = fConfig.getInitParameter("characterEncoding");
	}

}
