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
	<div class="m-form-wrap" >
	<form action="findcodeSuccess.jsp" method="post"  accept-charset="UTF-8" >
		<h3>请输入新密码</h3>
		<p><input type="password" name="password" placeholder="请输入6-20为数字、字母或者下划线" id="pwd" onblur="check3(pwd)"><i id="pwd_i"></i></p>
		<p><input type="password" name="repassword" placeholder="请再次输入您的密码" id="repwd" onblur="check4(repwd)"><i id="repwd_i"></i></p>
		<p><button type="submit" "btn1">确认修改</button></p>
	</form>
	</div>
</div>
</div>
</body>
<script type="text/javascript">
	function check3(pwd){
		var oPwd=document.getElementById("pwd_i");
		var val=pwd.value;
		if(!val){
			oPwd.innerHTML="密码不能为空";
			return false;
		}
		if(val.length<6){
			oPwd.innerHTML="密码长度要为六位";
			return false;
		}
		oPwd.innerHTML="";
	}
	function check4(repwd){
		var oRepwd=document.getElementById("repwd_i");
		var val1=pwd.value;
		var val2=repwd.value;
		if(!val1){
			oRepwd.innerHTML="密码不能为空";
		}
		if(val1!=val2){
			oRepwd.innerHTML="两次密码不一样";
			return false;
		}
		oRepwd.innerHTML="";
	}
</script>
</html>