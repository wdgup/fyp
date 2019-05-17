package fyp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fyp.Service.MessageService;
import fyp.Service.UserService;
import fyp.entity.User;

public class MessageServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public MessageServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 *
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		HttpSession session = request.getSession(true);
		MessageService messageService=new MessageService();
		UserService userService=new UserService();
		String text=request.getParameter("text");
		String username=request.getParameter("username");
		String isLogin=session.getAttribute("isLogin").toString();  //存的时候就非布尔
		String phoneA=session.getAttribute("userid").toString();
		String phoneB;
		phoneB=userService.selectByNameForPhone(username);
		if(isLogin=="true"){
			System.out.println("phoneA:"+phoneA);
			messageService.regMessage(phoneA, phoneB,text);
		}else{
			response.sendRedirect("login.jsp");
		}
		response.sendRedirect("IndexServlet");
		return;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
