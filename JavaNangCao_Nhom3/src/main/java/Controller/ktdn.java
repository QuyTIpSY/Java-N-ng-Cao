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

import bean.khachhangbean;
import bean.loaibean;
import bo.khachhangbo;
import bo.loaibo;

/**
 * Servlet implementation class ktdn
 */
@WebServlet("/ktdn")
public class ktdn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ktdn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un=request.getParameter("txtun");
	 	String pass=request.getParameter("txtpass");
	 	RequestDispatcher rd;
	 	
	 	
	 	if(un!=null&&pass!=null) {
		 		khachhangbo khbo= new khachhangbo();
		 		khachhangbean kh=khbo.ktdn(un, pass);
		 	if(kh!=null) {
	            HttpSession session = request.getSession();//Tao doi tuong session
	            session.setAttribute("kh", kh);
	            session.setAttribute("makh", kh.getMakh());
	            rd= request.getRequestDispatcher("htsachController");
		 	}
		 	else
		 		  rd= request.getRequestDispatcher("dangnhap.jsp?kt=1");	
	 	}else
	 		 rd= request.getRequestDispatcher("dangnhap.jsp");
	 		
	 rd.forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
