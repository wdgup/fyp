<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="fyp.entity.User"%>
<%@ page import="fyp.dao.UserDao"%>
<%@ page import="fyp.Service.UserService"%>
<html>
<head>
</head>
<body>
    <%
       User user=new User();
       UserService userService=new UserService();
       UserDao userDao=new UserDao();
       request.setCharacterEncoding("UTF-8");
       String username=request.getParameter("name");
       String age=request.getParameter("age");
       String height=request.getParameter("height");
       String education=request.getParameter("education");
       String income=request.getParameter("money");  
       String phone=request.getParameter("phonenumber");
       String password=request.getParameter("password");  
       String cha="i";
       
       user.setUsername(username);
       user.setAge(age);
       user.setHeight(height);
       user.setEducation(education);
       user.setIncome(income);
       user.setPhone(phone);
       user.setPassword(password);
       user.setCha(cha);
       System.out.println(user.getUsername());
       
       int id;
       id=userService.selectByPhone(phone); 
       if(id>0){
       	  response.sendRedirect("registerError.html");   
       }else{
          userService.register(user);
          response.sendRedirect("login.jsp");
       }      
     %>
       
       
</body>
</html>