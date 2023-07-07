package test;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.apache.tomcat.util.net.ApplicationBufferHandler;

/**
 * Application Lifecycle Listener implementation class TestListener
 *
 */
@WebListener
public class TestListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
	// 필수 기본 생성자
    public TestListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    // 소멸할때
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    //생성할때
    public void contextInitialized(ServletContextEvent sce)  { 
    	//리스너가 생성되면
    	// 이 부분에서 크롤링
    	// 그걸 DB에 넣어주세요
    	
    	ArrayList<MemberVO> datas = new ArrayList<MemberVO>();
    	for(int i=0; i<5; i++) {
    		MemberVO data = new MemberVO();
    		data.setName("홍길동0" + (i+1));
    		data.setAge(i+1);
    		datas.add(data);
    	}
    	datas.add(new MemberVO());
    	datas.add(new MemberVO());
    	
    	MemberVO mVO = new MemberVO();
    	mVO.setName("티모");
    	mVO.setAge(13);
    	
    	// application.setAttribute("datas", datas);
    	ServletContext sc = sce.getServletContext();
    	sc.setAttribute("datas", datas);
    	sc.setAttribute("data", mVO);
    	
    	System.out.println("로그: 리스너 수행 완료!");
    }
	
}
