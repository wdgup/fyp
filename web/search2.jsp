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
        #btn_x{
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
        }
         #btn1{
        	display: inline-block;
        	width: 100px;
        	height: 40px;
        	background: pink;
        	color: white;
        	border: 1px solid #fff;
        	border-radius: 4px;
        	font-size: 18px;
        	cursor: pointer;    	
        }
        #btn2{
        	display: inline-block;
        	width: 100px;
        	height: 40px;
        	background: pink;
        	color: white;
        	border: 1px solid #fff;
        	border-radius: 4px;
        	font-size: 18px;
        	cursor: pointer;    	
        }
       #btn3{
        	display: inline-block;
        	width: 100px;
        	height: 40px;
        	background: pink;
        	color: white;
        	border: 1px solid #fff;
        	border-radius: 4px;
        	font-size: 18px;
        	cursor: pointer;    	
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
	<p><input type="submit" name="" value="搜索" id="btn_x"></p>
 </form>
</div>
 <div class="bd">
  
	<table width="1000px" align="center">
        <tr>
			<td><img src="upload/${listage[0].phone}.jpg"></td>
			<td><img src="upload/${listage[1].phone}.jpg"></td>
			<td><img src="upload/${listage[2].phone}.jpg"></td>
			<td><img src="upload/${listage[3].phone}.jpg"></td>
		</tr>
		<tr>
			<td align="center">姓名：${listage[0].username}<br/>年龄：${listage[0].age}
			<br/><input type="button" name="" value="打招呼" id="btn0" onclick="getContents(${listage[0].phone},0)") ></td>
    		<td align="center">姓名：${listage[1].username}<br/>年龄：${listage[1].age}
    		<br/><input type="button" name="" value="打招呼" id="btn1" onclick="getContents(${listage[1].phone},1)"></td>
    		<td align="center">姓名：${listage[2].username}<br/>年龄：${listage[2].age}
    		<br/><input type="button" name="" value="打招呼" id="btn2" onclick="getContents(${listage[2].phone},2)"></td>
    		<td align="center">姓名：${listage[3].username}<br/>年龄：${listage[3].age}
    		<br/><input type="button" name="" value="打招呼" id="btn3" onclick="getContents(${listage[3].phone},3)"></td>
		</tr>

	</table>
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
  
  
  //全局xmlHttp对象
    var xmlHttp;

    //获得xmlHttp对象
    function createXMLHttp() {
        //对于大多数浏览器适用
        var xmlHttp;
        if (window.XMLHttpRequest) {
            xmlHttp = new XMLHttpRequest();
        }
        //考虑浏览器的兼容性
        if (window.ActiveXObject) {
            xmlHttp = new ActiveXOject("Microsoft.XMLHTTP");
            if (!xmlHttp) {
                xmlHttp = new ActiveXOject("Msxml2.XMLHTTP");
            }
        }
        return xmlHttp;
    }
    
    //回调函数
    function callback() {
        //4代表完成
        if(xmlHttp.readyState == 4){
            //200代表服务器响应成功，404代表资源未找到，500服务器内部错误
            if(xmlHttp.status == 200){
                //交互成功获得响应的数据，是文本格式
                var result = xmlHttp.responseText;
                //解析获得的数据
                var json = eval("("+ result +")");
                //获得数据之后，就可以动态的显示数据了，把数据显示到输入框下面
                //alert(json);
            }
        }
    }
    
    //获得输入框的内容
    function getContents(str,bid){                           //按钮可通过id同一设定属性，有可能因为属性而不能触发点击函数
        //首先获得用户的输入内容，这里获得的是一个结点
        var content = document.getElementById("keyword");
        
        var b0 = document.getElementById("btn0");
        var b1 = document.getElementById("btn1");
        var b2 = document.getElementById("btn2");
        var b3 = document.getElementById("btn3");
        if(bid==0){
           b0.value="已打招呼";
        }else if(bid==1){
        b1.value="已打招呼";
        }else if(bid==2){
        b2.value="已打招呼";
        }else if(bid==3){
        b3.value="已打招呼";
        }
   
        if(content.value ==""){
            return;
        }
        
        //向服务器发送内容，用到XmlHttp对象
        xmlHttp = createXMLHttp();
        //给服务器发送数据，escape()不加中文会有问题
        var url = "search?keyword=" + escape(str);
        //true表示js的脚本会在send()方法之后继续执行而不会等待来自服务器的响应
        xmlHttp.open("GET",url,true);
        //xmlHttp绑定回调方法，这个方法会在xmlHttp状态改变的时候调用,xmlHttp状态有0-4，
        //我们只关心4，4表示完成
        xmlHttp.onreadystatechange=callback;
        xmlHttp.send(null);
    }
</script>
</body>
</html>