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
import bo.khachhangbo;
import dao.khachhangdao;

/**
 * Servlet implementation class dangkyController
 */
@WebServlet("/dangkyController")
public class dangkyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangkyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("txtht");
		String adr=request.getParameter("txtdc");
		String pn=request.getParameter("txtsdt");
		String email=request.getParameter("txtemail");
		String un=request.getParameter("txttk");
		String pw=request.getParameter("txtmk");
		
		RequestDispatcher rd;
		
//		khachhangbo khbo=new khachhangbo();
//		ArrayList<khachhangbean> dskh=khbo.getkh();
		
//		if(dskh!=null) {
//			for(khachhangbean kh: dskh) {
//				if(un.equals(kh.getTendn())) {
//					rd = request.getRequestDispatcher("dangky.jsp");
//					break;
//				}
//			}
//		}	
		
		if(name!=null && un!=null && pw!=null) {
			khachhangdao khdao=new khachhangdao();
			khdao.addkhachhang(name, adr, pn, email, un, pw);
			rd=request.getRequestDispatcher("dangnhapController");
		}
		else
			rd=request.getRequestDispatcher("dangky.jsp");
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
