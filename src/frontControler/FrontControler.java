package frontControler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import aplicationControler.AplicationControler;
import resolver.PageResolver;
@MultipartConfig(maxFileSize = 1024*1024*10)
/**
 * Servlet implementation class FrontControler
 */
@WebServlet({"/FrontControler","/action/*"})
public class FrontControler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontControler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String value= request.getPathInfo();
		String view= AplicationControler.getInstanca().processRequest(value, request);
		String page= PageResolver.getPage(view);
		RequestDispatcher rd= request.getRequestDispatcher(page);
		rd.forward(request, response);
					
	}

}
