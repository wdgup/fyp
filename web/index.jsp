<%@ page import="java.util.Objects" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<style type="text/css">
	    a{
	    	text-decoration: none;
	    	color: black;
	    }
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
        body{
	font-family: Arial,Helvetica,sans-serif;
	font-size: 17px;
	text-align: 1.5;
}
 
#open_btn {
	background: lightblue;
	border: 1px solid lightblue;
	display: inline-block;
	width: 100px;
	height: 90px;
	font-size: 20px;
	color: black;
	cursor: pointer;
	outline: none;
}
 
#background {
	display: none;
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0,0,0,0.5);
}
 
#div1 {
	background:#eeeeee;
	width: 70%;
	z-index: 1;
	margin: 2% auto;
	overflow: auto;
}
 
span {
	color: white;
	padding-top: 12px;
	cursor: pointer;
	padding-right: 15px;
}
 
#div2 {
	background:#eeeeee;
	margin: auto;
	height: 500px;
	padding: 0 20px;
}
 
#close {
	padding: 5px;
	background: #5cd31b;
}
 
#close-button {
	float: right;
	font-size: 30px;
}
 
#foot {
	height: 50px;
	padding: 15px 0;
	text-align: center;
	background: #5cd31b;
	color: white;
}
 
h2 {
	margin: 10px 0;
	color: white;
	padding-left: 15px;
}
 
h3 {
	margin: 0 0px;
	padding-top: 15px;
}
#submit-btn{
	font-size: 20px;
	border: 1px solid white;
	display: inline-block;
	height: 30px;
	width: 100px;
}
form div{
	margin-top: 15px;
}
	</style>
</head>
<body>

         <%
          try{
                if(Objects.isNull(session.getAttribute("isLogin")) || !session.getAttribute("isLogin").toString().equals("true")){
                   response.sendRedirect("login.jsp");      
                }
              }catch(Exception e){
          		e.printStackTrace();
                response.sendRedirect("login.jsp"); 
              }
           %>
<div class="nav">
  <button id="open_btn" class="btn">问卷调查</button>
  <div id="background" class="back">
  	<div id="div1" class="content">
  		<div id="close">
  			<span id="close-button">x</span>
  			<h2>婚恋性格匹配测试题</h2>		
  		</div>
  		<form action="CharacterServlet" method="post"  accept-charset="UTF-8" >
  		<div id="div2">
  			
  				<div>
  				1.我倾向于从何处得到力量:<br>
  				<input type="radio" name="power" value="x">别人
  				<input type="radio" name="power" value="y">我自己的想法
  			    </div>
  			    <div>
  				2.当我参加一个社交聚会时，我倾向于:<br>
  				<input type="radio" name="social" value="x">在夜色很深时，一旦我开始投入，就能嗨到很久
  				<input type="radio" name="social" value="y">在夜晚开始的时候，我就疲倦了并且想要回家
  			    </div>
  			    <div>
  				3.下列哪一种听起来比较吸引人<br>
  				<input type="radio" name="attract" value="x">与我爱的人到有很多人并且社交活动频繁的地方
  				<input type="radio" name="attract" value="y">待在家中与我爱的人做一些特别的事情
  			    </div>
  			    <div>
  				4.在约会中，我通常<br>
  				<input type="radio" name="date" value="x">整体比较健谈的
  				<input type="radio" name="date" value="y">较安静并保留
  			    </div>
  			    <div>
  				5.我倾向拥有:<br>
  				<input type="radio" name="friend" value="x">很多认识的人和很多亲密的朋友
  				<input type="radio" name="friend" value="y">很少亲密的朋友狠一些认识的人
  				</div>
  				<div>
  				6.我是这种人<br>
  				<input type="radio" name="type" value="x">喜欢先看整个大局面
  				<input type="radio" name="type" value="y">喜欢先把握细节
  			    </div>
  			    <div>
  				7.当与一个人交往时，我倾向评量:<br>
  				<input type="radio" name="love" value="x">更多情感上的兼容性，表达爱意和对另一半的需求很敏感
  				<input type="radio" name="love" value="y">更多智能上的兼容性，沟通重要的想法，比较客观
  			    </div>
  			    <div>
  				8.我选择的生活循环着:<br>
  				<input type="radio" name="life" value="x">日程表和组织
  				<input type="radio" name="life" value="y">自然发生和弹性
  			    </div> 			
  		</div>
  		<div id="foot">
  			<input type="submit" value="提交" id="submit-btn">
  		</div>
  		</form>
  	</div>
  </div>
	<div class="le">
		<ul>
			<li><a href="my2.jsp" id="keyword">我的珍爱</a></li>
			<li><a href="search.jsp">搜索</a></li>
			<li><a href="register.jsp">注册会员</a></li>
		</ul>
	</div>
	<div class="re">
		<div class="people">
			<img src="image/people.jpg" id="ig1" onclick="show1()">
			<ul id="ul1">
               <li><a href="register.jsp">编辑资料</a></li>
               <li><a href="identify.jsp">实名认证</a></li>
               <li><a href="functionServlet?type=logout">退出</a></li>
			</ul>
		</div>
		<div class="message">
			<img src="image/message.jpg" id="ig2" onclick="show2()">
			<ul id="ul2">
				<li><a href="my.jsp">消息</a></li>
				<li><a href="my.jsp">关注</a></li>
				<li><a href="message.jsp">留言</a></li>
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

	var btn = document.getElementById('open_btn');
var div = document.getElementById('background');
var close = document.getElementById('close-button');
 
btn.onclick = function show() {
	div.style.display = "block";
}
 
close.onclick = function close() {
	div.style.display = "none";
}
 
window.onclick = function close(e) {
	if (e.target == div) {
		div.style.display = "none";
	}
}
</script>
</html>