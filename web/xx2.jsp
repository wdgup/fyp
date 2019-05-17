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
        #btn0,#btn8,#btn9,#btn10,#btn11,#btn12,#btn13,#btn14,#btn15{
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
        #btn4{
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
        #btn5{
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
        #btn6{
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
        #btn7{
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
<div class="bd">
  
	<table width="1000px" align="center">
		<tr>
			<td><img src="upload/${list[0].phone}.jpg"></td>
			<td><img src="upload/${list[1].phone}.jpg"></td>
			<td><img src="upload/${list[2].phone}.jpg"></td>
			<td><img src="upload/${list[3].phone}.jpg"></td>
		</tr>
		<tr>
			<td align="center">姓名：${list[0].username}<br/>年龄：${list[0].age}
			<br/><input type="button" name="" value="打招呼" id="btn0" onclick="getContents(${list[0].phone},0)">
			                                                       <input type="button" name="" value="关注" id="btn8" onclick="getContents2(${list[0].phone},0)"></td>
    		<td align="center">姓名：${list[1].username}<br/>年龄：${list[1].age}
    		<br/><input type="button" name="" value="打招呼" id="btn1" onclick="getContents(${list[1].phone},1)">
    					                                           <input type="button" name="" value="关注" id="btn9" onclick="getContents2(${list[1].phone},1)"></td>
    		<td align="center">姓名：${list[2].username}<br/>年龄：${list[2].age}
    		<br/><input type="button" name="" value="打招呼" id="btn2" onclick="getContents(${list[2].phone},2)">
    					                                           <input type="button" name="" value="关注" id="btn10" onclick="getContents2(${list[2].phone},2)"></td>
    		<td align="center">姓名：${list[3].username}<br/>年龄：${list[3].age}
    		<br/><input type="button" name="" value="打招呼" id="btn3" onclick="getContents(${list[3].phone},3)">
    					                                           <input type="button" name="" value="关注" id="btn11" onclick="getContents2(${list[3].phone},3)"></td>
		</tr>
		<tr>
			<td><img src="upload/${list[4].phone}.jpg"></td>
			<td><img src="upload/${list[5].phone}.jpg"></td>
			<td><img src="upload/${list[6].phone}.jpg"></td>
			<td><img src="upload/${list[7].phone}.jpg"></td>
		</tr>
		<tr>
			<td align="center">姓名：${list[4].username}<br/>年龄：${list[4].age}
			<br/><input type="button" name="" value="打招呼" id="btn4" onclick="getContents(${list[4].phone},4)">
			                                                       <input type="button" name="" value="关注" id="btn12" onclick="getContents2(${list[4].phone},4)"></td>
    		<td align="center">姓名：${list[5].username}<br/>年龄：${list[5].age}
    		<br/><input type="button" name="" value="打招呼" id="btn5" onclick="getContents(${list[5].phone},5)">
    					                                           <input type="button" name="" value="关注" id="btn13" onclick="getContents2(${list[5].phone},5)"></td>
    		<td align="center">姓名：${list[6].username}<br/>年龄：${list[6].age}
    		<br/><input type="button" name="" value="打招呼" id="btn6" onclick="getContents(${list[6].phone},6)">
    					                                           <input type="button" name="" value="关注" id="btn14" onclick="getContents2(${list[6].phone},6)"></td>
    		<td align="center">姓名：${list[7].username}<br/>年龄：${list[7].age}
    		<br/><input type="button" name="" value="打招呼" id="btn7" onclick="getContents(${list[7].phone},7)">
    					                                           <input type="button" name="" value="关注" id="btn15" onclick="getContents2(${list[7].phone},7)"></td>
		</tr>
	</table>
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
        var b4 = document.getElementById("btn4");
        var b5 = document.getElementById("btn5");
        var b6 = document.getElementById("btn6");
        var b7 = document.getElementById("btn7");
        if(bid==0){
           b0.value="已打招呼";
        }else if(bid==1){
        b1.value="已打招呼";
        }else if(bid==2){
        b2.value="已打招呼";
        }else if(bid==3){
        b3.value="已打招呼";
        }else if(bid==4){
        b4.value="已打招呼";
        }else if(bid==5){
        b5.value="已打招呼";
        }else if(bid==6){
        b6.value="已打招呼";
        }else if(bid==7){
        b7.value="已打招呼";
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
    
     //获得输入框的内容
    function getContents2(str,bid){                           //按钮可通过id同一设定属性，有可能因为属性而不能触发点击函数
        //首先获得用户的输入内容，这里获得的是一个结点
        var content = document.getElementById("keyword");
        
        var b0 = document.getElementById("btn8");
        var b1 = document.getElementById("btn9");
        var b2 = document.getElementById("btn10");
        var b3 = document.getElementById("btn11");
        var b4 = document.getElementById("btn12");
        var b5 = document.getElementById("btn13");
        var b6 = document.getElementById("btn14");
        var b7 = document.getElementById("btn15");
        if(bid==0){
           b0.value="已关注";
        }else if(bid==1){
        b1.value="已关注";
        }else if(bid==2){
        b2.value="已关注";
        }else if(bid==3){
        b3.value="已关注";
        }else if(bid==4){
        b4.value="已关注";
        }else if(bid==5){
        b5.value="已关注";
        }else if(bid==6){
        b6.value="已关注";
        }else if(bid==7){
        b7.value="已关注";
        }
        
        
        if(content.value ==""){
            return;
        }
        
        //向服务器发送内容，用到XmlHttp对象
        xmlHttp = createXMLHttp();
        //给服务器发送数据，escape()不加中文会有问题
        var url = "search2?keyword=" + escape(str);
        //true表示js的脚本会在send()方法之后继续执行而不会等待来自服务器的响应
        xmlHttp.open("GET",url,true);
        //xmlHttp绑定回调方法，这个方法会在xmlHttp状态改变的时候调用,xmlHttp状态有0-4，
        //我们只关心4，4表示完成
        xmlHttp.onreadystatechange=callback;
        xmlHttp.send(null);
    }
</script>
</html>