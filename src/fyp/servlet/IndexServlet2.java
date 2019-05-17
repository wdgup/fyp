package fyp.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fyp.Service.HiService;
import fyp.Service.UserService;
import fyp.entity.Hi;
import fyp.entity.User;

/**
 * Servlet implementation class IndexServlet
 */
@WebServlet("/IndexServlet2")
public class IndexServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService userService=new UserService();
		HiService hiService=new HiService();
		List<User>  list=null;
		List<Hi>  listHi=null;
		list=userService.showAll();
		Collections.reverse(list);
		request.setAttribute("list", list);
		List<Hi>  listpage=new ArrayList<Hi>();
		//存的时候就非布尔
		String isLogin=request.getSession().getAttribute("isLogin").toString();
		String phone=request.getSession().getAttribute("userid").toString();
		if(isLogin=="true"){
			listHi=hiService.searchPhone(phone);
		}else{
			response.sendRedirect("login.jsp");
		}
		int sum=listHi.size();
		int summin=0;
		if(sum>5){
			summin=sum-5;
		}
		System.out.println(listHi.size());
		System.out.println(summin);
		for(int i=sum-1;i>=summin;i--){
			Hi hi=new Hi();
			if(listHi.get(i).getPhoneA().equals(phone)){
				hi.setPhoneA("你给");
				hi.setPhoneB(userService.selectByPhoneForName(listHi.get(i).getPhoneB())+"打了个招呼!");
			}else if(listHi.get(i).getPhoneB().equals(phone)){
				hi.setPhoneA(userService.selectByPhoneForName(listHi.get(i).getPhoneA())+"给");
				hi.setPhoneB("你打了个招呼!");
			}
			listpage.add(hi);
		}
		if(sum<5){
			summin=5-sum;
		}
		for(int i=0;i<summin;i++){
			Hi hi1=new Hi();
			hi1.setPhoneA("  ");
			hi1.setPhoneB(" ");
			listpage.add(hi1);
		}

		request.setAttribute("listpage", listpage);
		request.getRequestDispatcher("/xx2.jsp").forward(request, response);
	}



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}



}
