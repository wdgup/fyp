package fyp.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fyp.Service.UserService;
import net.sf.json.JSONArray;

/**
 * Servlet implementation class AjaxServlet
 */
@WebServlet("/search")
public class AjaxServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    static List<String> list = new ArrayList<>();
    static{
        list.add("xx");
        list.add("xx");
    }

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjaxServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        HttpSession session = request.getSession(true);
        UserService userService=new UserService();
        //首先获得客户端发送来的数据
        String phoneB = request.getParameter("keyword");
        String isLogin=session.getAttribute("isLogin").toString();  //存的时候就非布尔
        String phoneA=session.getAttribute("userid").toString();
        if(isLogin=="true"){
            System.out.println("phoneA:"+phoneA);
            userService.regHi(phoneA, phoneB);
        }else{
            response.sendRedirect("login.jsp");
        }
        System.out.println("phoneB:"+phoneB);
        //返回json数据
        response.getWriter().write(JSONArray.fromObject(list).toString());
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
    }

}