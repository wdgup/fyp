<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="fyp.entity.User"%>
<%@ page import="fyp.dao.UserDao"%>
<%@ page import="fyp.Service.UserService"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
</head>
<body>

        <%
       		try {
				User user=new User();
				UserService userService=new UserService();
				UserDao userDao=new UserDao();
				request.setCharacterEncoding("UTF-8");
				String password=request.getParameter("password");
				String userPhone=session.getAttribute("userPhone").toString();
				System.out.println("userId:"+userPhone);
				userService.updatePassword(userPhone, password);
			}catch (Exception e){

			}
			response.sendRedirect("login.jsp");
   	   %>
</body>

</html>