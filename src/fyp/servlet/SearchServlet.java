package fyp.servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fyp.Service.UserService;
import fyp.entity.User;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SearchServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		UserService userService=new UserService();
		User user1=new User();
		User user2=new User();
		User user3=new User();
		User user4=new User();
		user1.setPhone("00000");
		user2.setPhone("00000");
		user3.setPhone("00000");
		user4.setPhone("00000");
		String minage=request.getParameter("minage");
		String maxage=request.getParameter("maxage");
		List<User>  listage=null;
		listage=userService.searchAge(minage, maxage);
		if(listage.size()==0){
			listage.add(user1);
			listage.add(user2);
			listage.add(user3);
			listage.add(user4);
		}
		if(listage.size()==1){
			listage.add(user1);
			listage.add(user2);
			listage.add(user3);
		}
		if(listage.size()==2){
			listage.add(user1);
			listage.add(user2);
		}
		if(listage.size()==3){
			listage.add(user1);
		}
		//System.out.println(listage.get(0).getPhone());
		request.setAttribute("listage", listage);
		request.getRequestDispatcher("/search2.jsp").forward(request, response);
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
