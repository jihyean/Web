package controller;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import model.BoardDAO;
import model.BoardVO;
import model.Crawling;

/**
 * Application Lifecycle Listener implementation class CrawlingListener
 *
 */
@WebListener
public class CrawlingListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public CrawlingListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  {
    	
    	ArrayList<BoardVO> datas=new ArrayList<BoardVO>();
    	datas =Crawling.sample();
    	
    	BoardDAO bDAO = new BoardDAO(); // 영화 DAO
    	
    	for(BoardVO v : datas ) {
    		bDAO.insert(v);
    	}
    	
		/*
		 * ServletContext sc = sce.getServletContext(); sc.setAttribute("datas", datas);
		 */
    	
    	System.out.println("로그: Crawling리스너 수행 완료!");


    }
	
}
