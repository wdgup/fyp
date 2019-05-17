<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<style type="text/css">
	    body{
	    	margin: 0;
	    	padding: 0;
	    }
		.nav img{
			width: 100px;
			height: 100px;
		}
        li{
            list-style: none;
        }
        .nav{
        	width: 1365px;
        	height: 100px;
        	background: lightblue;
        }
        .le{
        	float: left;
        }
        .le ul li{
        	float: left;
        	display: inline-block;
        	width: 120px;
        	height: 100px;
        	line-height: 60px;
        	text-align: center;
        	cursor: pointer;
        }
        .re{
        	float: right;
        }
        .people,.message{
        	float: left;
        	margin-left: 100px;
        }
        .people ul,.message ul{
        	display: none;
        }
        .people ul li,.message ul li{
        	display: block;
        	width: 100px;
        	height: 50px;
        	line-height: 50px;
        	cursor: pointer;
        }
	</style>
</head>
<body>

          <%
          try{
                String isLogin=session.getAttribute("isLogin").toString();
                if(isLogin!="true"){
                   response.sendRedirect("login.jsp");      
                }
              }catch(Exception e){
                response.sendRedirect("login.jsp"); 
              }
           %>

<div class="nav">
	<div class="le">
		<ul>
			<li><a href="my.jsp">我的珍爱</a></li>
			<li><a href="search.jsp">搜索</a></li>
			<li><a href="register.jsp">注册会员</a></li>
		</ul>
	</div>
	<div class="re">
		<div class="people">
			<img src="image/people.jpg" id="ig1" onclick="show1()">
			<ul id="ul1">
               <li>编辑资料</li>
               <li><a href="identify.jsp">实名认证</a></li>
               <li>退出</li>
			</ul>
		</div>
		<div class="message">
			<img src="image/message.jpg" id="ig2" onclick="show2()">
			<ul id="ul2">
				<li>消息</li>
				<li>关注</li>
			</ul>
		</div>
	</div>
</div>
</body>
<script type="text/javascript">
	function show1(){
		var oUl1=document.getElementById("ul1");
	    if(oUl1.style.display=='none'){
	    	oUl1.style.display="block";
	    }
	    else{
	    	oUl1.style.display="none";
	    }

	}
		function show2(){
		var oUl2=document.getElementById("ul2");
	    if(oUl2.style.display=='none'){
	    	oUl2.style.display="block";
	    }
	    else{
	    	oUl2.style.display="none";
	    }

	}
</script>
</html>