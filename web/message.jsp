<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<style type="text/css">
        *{
            box-sizing: border-box;
        }
		.dv1{
			margin: 0 auto;
			width: 300px;
			height: 300px;
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
        .message-box{
            margin-left: 70px;
            width: 800px;
        }
        .message-box .title{
            margin-top: 30px;
            position: relative;
            height: 60px;
            line-height: 60px;
            padding-left: 30px;
            border-radius: 6px 6px 0 0;
            border: 1px solid #ebebeb;
            border-bottom: none;
            font-weight: bold;
            background: #fff;
        }
        .message-box .content{
            height: 500px;
            border-radius: 0 0 6px 6px;
            border: 1px solid #ebebeb;
            padding-left: 30px;
        }
        .tab-ul{
            height: 46px;
            padding-left: 42px;
        }
        .tab-ul li.active{
            border-bottom: 2px solid lightblue;
            color: lightblue;
        }
        .tab-ul li{
            display: inline-block;
            float: left;
            height: 46px;
            line-height: 46px;
            margin-right: 120px;
            text-align: center;
            cursor: pointer;
        }
        #dv0 .show{
            display: block;
        }
        .current{
            border-bottom: 3px solid lightblue;
        }
        #dv0 div{
            margin-left: 40px;
            margin-right: 40px;
            display: none;
            width: 650px;
            height: 400px;
            background-color: #ebebeb;
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
<div style="margin: 50px auto;width: 500px;height: 300px;">
   <form action="MessageServlet" method="post">
    <h1>留言内容：</h1><textarea rows="5" cols="50" name="text"></textarea><br>
    <h3>接收人姓名：</h3><p><input type="text" name="username" id="name" ></p>
    <input type="submit" name="sub" value="发表留言">
   </form>
</body>
</html>