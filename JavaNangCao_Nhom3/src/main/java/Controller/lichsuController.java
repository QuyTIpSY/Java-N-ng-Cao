package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.chitietbean;
import bean.giohangbean;
import bean.khachhangbean;
import bean.lichsubean;
import bean.loaibean;
import bo.chitietbo;
import bo.giohangbo;
import bo.hoadonbo;
import bo.lichsubo;
import bo.loaibo;
import bo.thanhtoanbo;
import dao.chitietdao;

/**
 * Servlet implementation class lichsuController
 */
@WebServlet("/lichsuController")
public class lichsuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()		
     */
    public lichsuController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session =request.getSession();
	    khachhangbean kh=(khachhangbean)session.getAttribute("kh");
	    RequestDispatcher rd;
	    if(kh==null)
	    	response.sendRedirect("ktdn");
	    else {
	    	thanhtoanbo ttbo=new thanhtoanbo();
	    	hoadonbo hdbo=new hoadonbo();
	    	
	    	long mahd=hdbo.maxhd();
	    	ttbo.thanhtoan(mahd);
	    	session.removeAttribute("giotmp");
	    	
	    	lichsubo lsbo=new lichsubo();
	    	int makh=(int)session.getAttribute("makh");
	    	ArrayList<lichsubean> dsls=lsbo.getls(makh);
	    	session.setAttribute("dsls", dsls);	    	
	    	
	    	rd=request.getRequestDispatcher("lichsu.jsp");
	    	rd.forward(request, response);
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
