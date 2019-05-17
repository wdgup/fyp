package fyp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fyp.Service.UserService;
import fyp.entity.User;

public class CharacterServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public CharacterServlet() {
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
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		UserService userService=new UserService();
		String[] str=new String[8];
		int sum=0;


		try{
			str[0]=request.getParameter("power");    //name后台用，id前端用        ----如果为空会返回一个  空对象  (容易产生空指针异常)
			str[1]=request.getParameter("social");   //1 外向 2内向
			str[2]=request.getParameter("attract");
			str[3]=request.getParameter("date");
			str[4]=request.getParameter("friend");
			str[5]=request.getParameter("type");
			str[6]=request.getParameter("love");
			str[7]=request.getParameter("life");
		}catch(Exception e){

		}

		System.out.println("str0:"+str[0]);
		System.out.println("str7:"+str[7]);
		for(int i=0;i<8;i++){
			System.out.println("str:"+str[i]);
			if(str[i]!=null&&str[i].equals("x")){
				sum++;
			}
		}
		List<User>  listcha=null;
		if(sum>=4){
			listcha=userService.searchCharacter("o");
		}else{
			listcha=userService.searchCharacter("i");
		}
		User user1=new User();
		user1.setPhone("00000");
		for(int i=listcha.size();i<8;i++){
			listcha.add(user1);
		}
		System.out.println("sum:"+sum);
		System.out.println("size:"+listcha.size());
		System.out.println(listcha.get(0).getUsername());
		request.setAttribute("listcha", listcha);
		request.getRequestDispatcher("/chamatch.jsp").forward(request, response);
		return;





		//request.getRequestDispatcher("/search2.jsp").forward(request, response);	
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 *
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
