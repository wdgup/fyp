<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        p.dashed {
          margin:20px;
          padding:10px;
          border-style: dashed; 
          border-width: 2px;
          border-color: #f36c21;
          font-size:25px;
          font-weight:530;
          color:#130c0e;
          }  
          p.ex {font-size:14px;
             font-weight:500;
             color:#00ff00
          }  
        p.dashed1 {
          margin:20px;
          padding:10px;
          border-style: dashed; 
          border-width: 2px;
          border-color: #f36c21;
          font-size:10px;
          font-weight:530;
          color:#130c0e;
          } 

		p .dashed1{
			font-size: 20px;
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
<div class="message-box">
    <div class="title"><span>打招呼中心</span></div>
    <div class="content">
        <div id="dv0">
            <ul class="tab-ul">
                <li class="tab">
                   打招呼列表
                   <span class="count1">
                   <br>
                   <br>
                   </span>
                   
                 </li>
                 
                <li class="tab">
                   关注列表
                   <span class="count2">
                   
                   </span>
                </li>
                <li class="tab">
                   消息列表
                   <span class="count3">
                   
                   </span>
                </li>
            </ul>
            <div class="greet-list show">
                    <br>
            		<p class="dashed">${listpage[0].phoneA}${listpage[0].phoneB}</p>
					<p class="dashed">${listpage[1].phoneA}${listpage[1].phoneB}</p>
					<p class="dashed">${listpage[2].phoneA}${listpage[2].phoneB}</p> 
					<p class="dashed">${listpage[3].phoneA}${listpage[3].phoneB}</p> 
					<p class="dashed">${listpage[4].phoneA}${listpage[4].phoneB}</p> 
            </div>
            <div class="concern-list">
                    <br>
					<p class="dashed">${listpage2[0].phoneA}${listpage2[0].phoneB}</p>
					<p class="dashed">${listpage2[1].phoneA}${listpage2[1].phoneB}</p> 
					<p class="dashed">${listpage2[2].phoneA}${listpage2[2].phoneB}</p> 
					<p class="dashed">${listpage2[3].phoneA}${listpage2[3].phoneB}</p> 
					<p class="dashed">${listpage2[4].phoneA}${listpage2[4].phoneB}</p> 
            </div>
            <div class="message-list">
                    <br>
					<p class="dashed1" style="font-size: 20px">${listpage3[0].message}</p>
					<p class="dashed1" style="font-size: 20px">${listpage3[1].message}</p>
					<p class="dashed1" style="font-size: 20px">${listpage3[2].message}</p>
					<p class="dashed1" style="font-size: 20px">${listpage3[3].message}</p>
					<p class="dashed1" style="font-size: 20px">${listpage3[4].message}</p>
            </div>
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


    var oDv1=document.getElementsByClassName("content");
    for(var i=0;i<oDv1.length;i++){
        fn(oDv1[i]);
    }
    function fn(){
        var oDv0=document.getElementById("dv0");
        var liArr=oDv0.getElementsByTagName("li");
        var divArr=oDv0.getElementsByTagName("div");

        for(var i=0;i<liArr.length;i++){
            liArr[i].index=i;
            liArr[i].onmousemove=function(){
            for(var j=0;j<liArr.length;j++){
                liArr[j].className="";
                divArr[j].className="";
                }
            this.className='current';
            divArr[this.index].className="show";
         }
        }
    }

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
</script>
</html>