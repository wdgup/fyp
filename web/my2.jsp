<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        img{
        	display: inline-block;
        	width: 200px;
        	height: 200px;
        }
        #btn0{
        	display: inline-block;
        	width: 100px;
        	height: 40px;
        	background: pink;
        	color: white;
        	border: 1px solid #fff;
        	border-radius: 4px;
        	font-size: 18px;
        	cursor: pointer;
        	outline: none;
        }
	</style>
</head>
<body>
<%--<jsp:forward page="IndexServlet2"></jsp:forward>--%>
<div class="nav">
	<div class="le">
		<ul>
			<li><a href="IndexServlet2" id="keyword">我的珍爱</a></li>
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
               <li><a href="login.jsp">退出</a></li>
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
	
	
	function call(str)
{
  var xmlhttp;

  if (window.XMLHttpRequest)
  {
    // IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
    xmlhttp=new XMLHttpRequest();
  }
  else
  {
    // IE6, IE5 浏览器执行代码
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
  xmlhttp.onreadystatechange=function()
  {
    if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
      document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
    }
  }
  xmlhttp.open("GET","/try/ajax/gethint.php?q="+str,true);
  xmlhttp.send();
}
</script>
</html>