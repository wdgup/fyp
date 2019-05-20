package fyp.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fyp.Service.ConcernService;
import fyp.Service.HiService;
import fyp.Service.MessageService;
import fyp.Service.UserService;
import fyp.entity.Concern;
import fyp.entity.Hi;
import fyp.entity.Message;
import fyp.entity.User;

/**
 * Servlet implementation class IndexServlet
 */
@WebServlet("/IndexServlet")
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public IndexServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("null")
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService userService=new UserService();
		HiService hiService=new HiService();
		ConcernService concernService=new ConcernService();
		MessageService messageService=new MessageService();
		HttpSession session = request.getSession(true);

		List<Hi>  listHi=null;
		List<Hi>  listpage=new ArrayList<Hi>();
		Object isLogin=session.getAttribute("isLogin");  //存的时候就非布尔
		Object phone=session.getAttribute("userid");
		if(Objects.isNull(isLogin)||Objects.isNull(phone)){
			response.sendRedirect("login.jsp");
		}else {
			listHi=hiService.searchPhone(phone.toString());
		}
		System.out.println("登录人："+phone);
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



		List<Concern>  listConcern=null;
		List<Concern>  listpage2=new ArrayList<Concern>();
		if(isLogin=="true"){
			listConcern=concernService.searchPhone(phone.toString());
		}else{
			response.sendRedirect("login.jsp");
		}
		System.out.println("登录人："+phone);
		int sum1=listConcern.size();
		int summin1=0;
		if(sum1>5){
			summin1=sum1-5;
		}

		for(int i=sum1-1;i>=summin1;i--){
			Concern concern=new Concern();
			if(listConcern.get(i).getPhoneA().equals(phone)){
				concern.setPhoneA("你关注了");
				concern.setPhoneB(userService.selectByPhoneForName(listConcern.get(i).getPhoneB())+"!");
			}else if(listConcern.get(i).getPhoneB().equals(phone)){
				concern.setPhoneA(userService.selectByPhoneForName(listConcern.get(i).getPhoneA()));
				concern.setPhoneB("关注了你!");
			}
			listpage2.add(concern);
		}

		if(sum1<5){
			summin1=5-sum1;
		}
		for(int i=0;i<summin1;i++){
			Concern concern1=new Concern();
			concern1.setPhoneA("  ");
			concern1.setPhoneB(" ");
			listpage2.add(concern1);
		}


		List<Message>  listMessage=null;
		List<Message>  listpage3=new ArrayList<Message>();
		listMessage=messageService.searchPhone(phone.toString());
		int sum2=listMessage.size();
		int summin2=0;
		if(sum2>5){
			summin2=sum2-5;
		}

		for(int i=sum2-1;i>=summin2;i--){
			Message message=new Message();
			String sendName=null;
			String messages=null;
			sendName=userService.selectByPhoneForName(listMessage.get(i).getPhoneA());
			messages=listMessage.get(i).getMessage();
			message.setMessage(sendName+"向你留言："+messages);
			listpage3.add(message);
		}

		if(sum2<5){
			summin2=5-sum2;
		}
		for(int i=0;i<summin2;i++){
			Message message1=new Message();
			message1.setPhoneA("  ");
			listpage3.add(message1);
		}
		request.setAttribute("listpage", listpage);
		request.setAttribute("listpage2", listpage2);
		request.setAttribute("listpage3", listpage3);

		request.getRequestDispatcher("/xx.jsp").forward(request, response);

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
