package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.loaibean;
import bo.loaibo;

/**
 * Servlet implementation class htdidongController
 */
@WebServlet("/htdidongController")
public class htdidongController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public htdidongController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		loaibo lbo=new loaibo();
		ArrayList<loaibean> dsdidong=lbo.getloai();
		
		String key=request.getParameter("txttk");
		
		
			if(key!=null) {
				dsdidong=lbo.Tim(key);
			}
		
		
		request.setAttribute("dsdidong", dsdidong);
		
		
		RequestDispatcher rd=request.getRequestDispatcher("htdidong.jsp"); // điều hướng
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
