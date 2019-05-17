package fyp.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fyp.Service.UserService;
import fyp.entity.User;
import net.sf.json.JSONArray;

public class EditServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public EditServlet() {
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
		//设置编码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(true);
		UserService userService=new UserService();
		User user=new User();
		//首先获得客户端发送来的数据
		String isLogin=session.getAttribute("isLogin").toString();  //存的时候就非布尔
		String phoneA=session.getAttribute("userid").toString();

		String username=request.getParameter("name");
		String age=request.getParameter("age");
		String height=request.getParameter("height");
		String education=request.getParameter("education");
		String income=request.getParameter("money");
		String password=request.getParameter("password");

		if(isLogin=="true"){
			userService.updateAll(username, age, height, education, income, password, phoneA);
		}else{
			response.sendRedirect("login.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}