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
	    	margin: 0;
	    	padding: 0;
	    	border: 0;
	    	vertical-align: baseline;
	    }
		*{
			box-sizing: border-box;
		}
		.m-steps{
			width: 1500px;
			height: 200px;
			background-color: lightblue;
		}
		section{
			padding-top: 60px;
			width: 1000px;
			margin-left: 350px;
		}
		li{
			list-style: none;
		}
		.step{
			float: left;
			position: relative;
		}
		.step-no{
			color: #fff;
			width: 26px;
			height: 26px;
			border-radius: 50%;
			font-size: 20px;
			line-height: 26px;
			background: gray;
			text-align: center;
		}
		.step-txt{
			position: absolute;
			top: 30px;
			left: -25px;
			white-space: nowrap;
			font-size: 16px;
		}
		.step-item{
			float: left;
			width: 8px;
			height: 8px;
			border-radius: 50%;
			background-color: #ababab;
			margin-left: 30px;
		}
		.step1{
			margin-left: 50px;
		}
	    .container{
	    	clear: both;
	    	margin-top: 200px;
	    	text-align: center;
	    }
	    .container input{
	    	display: inline-block;
	    	width: 250px;
	    	height: 40px;
	    	line-height: 40px;
	    	font-size: 15px;
	    	outline: none;
	    	padding: 10px 20px;
	    	border: 1px solid #fff;
	    	border-radius: 4px;
	    	background-color: #f4f4f4;
	    }
	    .container button{
	    	width: 250px;
	    	height: 45px;
	    	background: lightblue;
	    	color: black;
	    	font-size: 16px;
	    	cursor: pointer;
	    	border: 1px solid #fff;
	    	border-radius: 4px;
	    }
	    i{
	    	color: red;
	    	font-style: normal;
	    	font-size: 15px;
	    }
	</style>
</head>
<body>
     <%
       User user=new User();
       UserService userService=new UserService();
       UserDao userDao=new UserDao();
       String flag="";
       int id;
       request.setCharacterEncoding("UTF-8");
       String phone=request.getParameter("phonenumber"); 
       
       System.out.println(user.getPhone());
       id=userService.selectByPhone(phone);  
       if(id>0){
		   System.out.println("成功");
		   session.setAttribute("userPhone",phone);
		   flag="";
		   response.sendRedirect("findcode2.jsp");
       }
       if(id==0){
               flag="<font color=red> 手机号不能为空</font>";        
       }       
      %>

<div class="m-steps">
<section>
	<div class="step">
		<div class="step-no">1</div>
		<div class="step-txt">输入手机号</div>
	</div>
	<ul class="step">
		<li class="step-item"></li>
		<li class="step-item"></li>
		<li class="step-item"></li>
		<li class="step-item"></li>
		<li class="step-item"></li>
		<li class="step-item"></li>
	</ul>
	<div class="step step1">
		<div class="step-no">2</div>
		<div class="step-txt">输入验证码</div>
	</div>
	<ul class="step">
		<li class="step-item"></li>
		<li class="step-item"></li>
		<li class="step-item"></li>
		<li class="step-item"></li>
		<li class="step-item"></li>
		<li class="step-item"></li>
	</ul>
	<div class="step step1">
		<div class="step-no">3</div>
		<div class="step-txt">输入新密码</div>
	</div>
</section>
<div class="container">
	<div class="m-form-wrap">
	 <form action="findcode1.jsp" method="post"  accept-charset="UTF-8" >
		<h3>请输入绑定的手机号</h3>
			<% out.println(flag); %>
	    <p><input type="text" name="phonenumber" placeholder="请输入您的手机号" onblur="check1(phonenumber)" id="phonenumber"><i id="phonenumber_i"></i></p>
	    <p><button type="submit" id="btn">下一步</button></p>
	 </form>
	</div>
</div>
</div>
</body>
<script type="text/javascript">
	function check1(phonenumber){
       var oPphonenumber=document.getElementById("phonenumber_i");
       var val=phonenumber.value;
       if(!val){
       	oPphonenumber.innerHTML="手机号不能为空!";
       	return false;
       }
       oPphonenumber.innerHTML="";
	}
</script>
</html>