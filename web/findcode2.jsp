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
	     .code
    {
         font-family:Arial;
         font-style:italic;
         color:blue;
         font-size:30px;
         border:0;
         padding:2px 3px;
         letter-spacing:3px;
         font-weight:bolder;            
         float:left;           
         cursor:pointer;
         width:150px;
         height:50px;
         line-height:60px;
         text-align:center;
         vertical-align:middle;
         background-color:#D8B7E3;
     }
     span {
        text-decoration:none;
        font-size:12px;
        color:#288bc4;
        padding-left:10px;
    }

    span:hover {
        text-decoration:underline;
        cursor:pointer;
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
 <table border="0" align="center"  cellspacing="5" cellpadding="5" >
        <tr>
            <td> <div id="checkCode" class="code"  onclick="createCode(4)" ></div></td>
            <td> <span onclick="createCode(4)">看不清换一张</span></td>
        </tr>
        <tr>
            <td>请输入验证码:</td>
            <td><input type="text" id="inputCode"  style="float:center;" onblur="check2(inputCode)"/><i id="code_i"></i></td>
        </tr>
        <tr>
            <td></td>
            <td><button id="btn" onclick="validateCode(inputCode)">下一步</button></td>
        </tr>
        
    </table>
    

</div>
</body>
<script type="text/javascript">
	function check2(code){
		var oCode=document.getElementById("code_i");
		var val=code.value;
		if(!val){
			oCode.innerHTML="验证码不能为空";
			return false;
		}
		oCode.innerHTML="";
	}
	   //页面加载时，生成随机验证码
    window.onload=function(){
     createCode(4);    
    }

    //生成验证码的方法
    function createCode(length) {
        var code = "";
        var codeLength = parseInt(length); 
        var checkCode = document.getElementById("checkCode");
       
        var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
        'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
        'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); 
        
        for (var i = 0; i < codeLength; i++)
        {
            
            var charNum = Math.floor(Math.random() * 62);
            
            code += codeChars[charNum];
        }
        if (checkCode)
        {
           
            checkCode.className = "code";
            
            checkCode.innerHTML = code;
        }
    }
    
   
    function validateCode(code)
    {
    
		var oCode=document.getElementById("code_i");
		var val=code.value;
		if(!val){
			oCode.innerHTML="验证码不能为空";
			return false;
		}
		oCode.innerHTML="";
        
        var checkCode = document.getElementById("checkCode").innerHTML;
       
        var inputCode = document.getElementById("inputCode").value;
        console.log(checkCode);
        console.log(inputCode);
        if (inputCode.length <= 0)
        {
            
        }
        else if (inputCode.toUpperCase() != checkCode.toUpperCase())
        {
            oCode.innerHTML="验证码错误";
            createCode(4);
        }
        else
        {
           window.location.href="findcode3.jsp"
        }       
    }  
 </script>