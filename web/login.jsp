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
	<style type="text/css">
	    body{
	    	background-image: url(image/bg.jpg);
	    	background-repeat: no-repeat;
	    	background-size: 1500px 800px;
	    	margin: 0;
	    	padding: 0;
	    }
	    .dv{
	    	width: 1500px;
	    	height: 100px;
	    	background-color: lightblue;
	    	text-align: center;
	    	line-height: 100px;
	    	font-size: 40px;
	    	font-weight: bold;
	    }
	    div{
	    	vertical-align: baseline;
	    }
	    a{
	       text-decoration: none;
	       color: gray;
	    }
	    input{
	    	outline: none;
	    }
		.panel{
			width: 370px;
			height: 370px;
			border: 1px solid #fff;
			position: absolute;
			top: 35%;
			left: 10%;
			background: #fff;
			border-radius: 4px;
		}
		.title{
		    line-height: 70px;
		    text-align: center;
		    border-bottom: 1px solid #eee;
		    font-size: 20px;
		    font-weight: bold;
		}
		.content{
			width: 290px;
			margin: 40px auto 20px;
			color: #7e8087;
			font-size: 14px;
		}
		section{
			display: block;
			margin: 0;
			padding: 0;
			border: 0;
			font-size: 100%;
			vertical-align: baseline;
		}
		.login-input input{
			display: block;
			width: 100%;
			height: 40px;
			background: #f4f4f4;
			border-radius: 4px;
			font-size: 14px;
			margin-bottom: 10px;
			padding-left: 10px;
			border: 1px solid #fff;
		}
		.forget{
			float: right;
			color: #7e8087;
			cursor: pointer;
		}
		.btn-box{
			height: 40px;
			line-height: 40px;
			padding: 0 20px;
			text-align: center;
			color: #fff;
			background: red;
			border-radius: 4px;
			margin-top: 40px;
			cursor: pointer;
		}
		.register{
			text-align: center;
			margin-top: 10px;
			cursor: pointer;
		}
        .login-button { 
	        width: 290px; 
	        padding: 0 20px;
	        margin-top: 40px;
	        height: 40px; 
			border-width: 0px; 
			border-radius: 4px; 
			background: red; 
			cursor: pointer; 
			color: #fff; 
			outline: none; 
			font-size: 14px; 
			text-align: center;
		}		
	</style>
	 <script type="text/javascript">
   function check() {
//手机号
    var regpphonenumber=/^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
    var pphonenumber= document.getElementById("pphonenumber");
    if(!regpphonenumber.test(pphonenumber.value)){
         pphonenumber.value="";
         pphonenumber.placeholder="手机号码格式错误";
         return false;
    }
//验证密码
    var regppassword=/^\w{3,20}$/;
    var ppassword= document.getElementById("ppassword");
    if(!regppassword.test(ppassword.value)){
         ppassword.value="";
         ppassword.placeholder="密码长度3-20位，包含字母数字下划线";
         return false;
    }   
    return true;
  }
</script>
</head>
<body>
     <%--<%
       User user=new User();
       UserService userService=new UserService();
       UserDao userDao=new UserDao();
       String flag="";
       request.setCharacterEncoding("UTF-8");
       String phone=request.getParameter("phonenumber");
       String password=request.getParameter("password");  
       System.out.println(user.getPhone());
       user.setId(-2);
       System.out.println(phone);
       user=userService.login(phone, password);   
       System.out.println(user.getId()); 
       if(user.getId()>=0){
           request.getSession().setAttribute("isLogin","true");
           request.getSession().setAttribute("userid",phone);
           flag="";
           System.out.println("成功");
           response.sendRedirect("index.jsp");

       }
       if(user.getId()==-1){
               flag="<font color=red> 登录失败,手机号或密码错误</font>";        
       }       
      %>--%>

<div class="dv">执子之手，与子偕老</div>
<div class="panel">
 <form action="functionServlet" method="post"  accept-charset="UTF-8" onsubmit="return check()">
	<div class="title">登录相守网</div>
	<div class="content">
	 <section>
		<div class="login-input"><input type="text" id="pphonenumber" name="phonenumber" placeholder="请输入手机号"></div>
		<div class="login-input"><input type="password" id="ppassword" name="password" placeholder="请输入密码"></div>
		<div class="login-input"><input type="hidden" id="type" name="type" ></div>
		<div>
			<input type="checkbox" name=""><label>下次自动登录</label>
			<span class="forget"><a href="findcode1.jsp">忘记密码？</a></span>
		</div>
	 </section>
	 <div class="btn-actions">
		<div><input type="submit"  class="login-button" value="立即登录"></div>
	    <div class="register"><span><a href="register.jsp">免费注册</a></span></div>
	 </div>	 
   </div>
 </form>
</div>
</body>
</html>