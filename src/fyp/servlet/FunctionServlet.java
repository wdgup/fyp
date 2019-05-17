package fyp.servlet;

import fyp.Service.UserService;
import fyp.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Objects;

@WebServlet("/functionServlet")
public class FunctionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        if("logout".equals(type)){
            request.getSession().invalidate();
            response.sendRedirect("login.jsp");
        }else{
            UserService userService = new UserService();
            String phone=request.getParameter("phonenumber");
            String password=request.getParameter("password");
            User user = userService.login(phone, password);
            if(Objects.nonNull(user)){
                request.getSession().setAttribute("isLogin","true");
                request.getSession().setAttribute("userid",user.getPhone());
                request.getRequestDispatcher("IndexServlet2").forward(request,response);
                return;
            }
            response.sendRedirect("login.jsp");
            return;
        }
    }
}
