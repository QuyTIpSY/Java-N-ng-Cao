package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class testController
 */
@WebServlet("/testController")
public class testController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public testController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// tạo ra đối tượng out
//		PrintWriter out = response.getWriter();
//		out.print("<html><body><b>Xin Chao</b></body></html>");
		
//		String tama=request.getParameter("txta");
//		String tamb=request.getParameter("txtb");
//		Long kq=(long)0;
//		Long a=(long)0;
//		Long b=(long)0;
//		if(tama!=null&&tamb!=null) { //khong phai chay lan dau
//			a=Long.parseLong(tama);
//			b=Long.parseLong(tamb);
//			if(request.getParameter("butc")!=null) kq=a+b;
//			else
//				if(request.getParameter("butt")!=null) kq=a-b;
//				else
//					if(request.getParameter("butn")!=null) kq=a*b;
//					else kq=a/b;
//			//tao bien request
//			request.setAttribute("aa", a);
//			request.setAttribute("bb", a);
//			request.setAttribute("kq", kq);
//		}
////		response.sendRedirect("maytinh.jsp?kq="+kq);
//		
//		RequestDispatcher rd = request.getRequestDispatcher("maytinh.jsp");
//		rd.forward(request, response);
		
		
		// Kiểm tra đăng nhập
		String un=request.getParameter("txtun");
		String pw=request.getParameter("txtpass");
		RequestDispatcher rd;
		if(un!=null&&pw!=null) {
		if(un.equals("abc") && pw.equals("123")) {
			HttpSession session = request.getSession(); // tạo đối tượng session
			session.setAttribute("dn", un);
			rd = request.getRequestDispatcher("htsach.jsp");
		}
		else 
			rd = request.getRequestDispatcher("dangnhap.jsp");
		}else
			rd = request.getRequestDispatcher("dangnhap.jsp");
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
