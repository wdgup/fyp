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
		.dv1{
			margin: 0 auto;
			width: 300px;
			height: 150px;
		}
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
        .dv1 input{
        	display: inline-block;
        	width: 300px;
        	height: 30px;
        	outline: none;
        	box-sizing: border-box;
        	padding-left: 10px;
        }
        #btn1{
        	cursor: pointer;
        }
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
<div class="nav">
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
<div class="dv1">
 <form action="SearchServlet" method="post"  accept-charset="UTF-8" onsubmit="return check()">
	<p><input type="text" name="minage" id="min" placeholder="最小年龄"></p>
	<p><input type="text" name="maxage" id="max" placeholder="最大年龄"></p>
	<p><input type="submit" name="" value="搜索" id="btn1"></p>
 </form>
</div>

 <script type="text/javascript">
   function check() {
//min
    var regagemin=/^\d{1,2}$/;
    var agemin= document.getElementById("min");
    if(!regagemin.test(agemin.value)){
         agemin.value="";
         agemin.placeholder="年龄范围0-99";
         return false;
    }
//max
       var regagemax=/^\d{1,2}$/;
    var agemax= document.getElementById("max");
    if(!regagemax.test(agemax.value)){
         agemax.value="";
         agemax.placeholder="年龄范围0-99";
         return false;
    }
    
    if(agemin.value>agemax.value){
         agemin.value="";
         agemin.placeholder="输入错误，最大年龄小于最小年龄";
         return false;
    }
    return true;
  }
</script>
</body>
</html>