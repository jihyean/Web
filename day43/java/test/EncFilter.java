package test;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;

/**
 * Servlet Filter implementation class EncFilter
 */
// @ 어노테이션(애너테이션)이라고 함
// 자바 문법이며 코드에 대한 설정을 나타냄
// 원래 안해도 작동하지만
// 얘는 언제 작동할지이기 때문에 없으면 작동하지 않음
@WebFilter("*.jsp")
public class EncFilter extends HttpFilter implements Filter {
	private String encoding;
       
    /**
     * @see HttpFilter#HttpFilter()
     */
    public EncFilter() { // 기본 생성자
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		request.setCharacterEncoding(this.encoding);
		// 하드코딩 : 유지보수 불리 ---> 상수화
		// ---> 설정 파일 생성해서 헤당 파일 로드 후 불러와서 사용
		
		
		System.out.println("인코딩 필터 doFilter 로그");
		
		chain.doFilter(request, response);
		// == 사용자의 요청
		// 사용자의 모든 요청이 담겨있음
		// 사용자의 요청정보들을 보고 어디서 무엇을 요청했는지 찾아서 다음페이지로 이동하기 때문에
		// 이동전에 인코딩해야 함
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("인코딩 필터 init 로그");
		this.encoding = fConfig.getServletContext().getInitParameter("encoding"); // 멤버변수 초기화
	}

}
