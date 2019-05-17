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


		.container{
			margin: 0 auto;
			width: 900px;
			height: 520px;
		}
		.container h3{
			font-size: 20px;
			font-weight: bold;
			line-height: 80px;
			padding-left: 30px;
		}
		.container p{
			padding-left: 30px;
			height: 50px;
			line-height: 50px;
		}
		.container p span{
            margin-right: 30px;
		}
		.container p input{
			box-sizing: border-box;
			display: inline-block;
			padding: 10px 10px;
			width: 300px;
			height: 40px;
			line-height: 40px;
			border: 1px solid #eee;
			border-radius: 4px;
			background: lightgray;
			outline: none;
		}
		#btn1{
			margin-left: 95px;
			font-size: 15px;
			font-weight: bold;
			height: 40px;
			line-height: 20px;
			background: lightblue;
		}
        .container img{
        	width: 500px;
        	height: 300px;
        }
        .c2 div,.c2 input{
        	margin-left: 30px;
        }
        #result{
        	width: 300px;
        	height: 300px;
        	border: 1px solid #eee;
        	border-radius: 4px;
        }
        #btn2{
        	margin-left: 0px;
        	display: inline-block;
        	width: 300px;
        	height: 50px;
        	background:lightblue;
        	border: 1px solid #eee;
        	border-radius: 4px;
        	font-size: 20px;
        	font-weight: bold;
        	cursor: pointer;
        }
        #c22{
        	display: none;
        }
        i{
        	color: red;
        	font-style: normal;
        	font-size: 15px;
        	margin-left: 10px;
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
               <li>实名认证</li>
               <li>退出</li>
			</ul>
		</div>
		<div class="message">
			<img src="image/message.jpg" id="ig2" onclick="show2()">
			<ul id="ul2">
				<li>消息</li>
				<li>关注</li>
				<li><a href="message.jsp">留言</a></li>
			</ul>
		</div>
	</div>
</div>
<div class="container">
 <form action="UploadServlet" method="post"  enctype="multipart/form-data" accept-charset="UTF-8"   >
	<div class="c1" id="c11">
	    <h3>请认证信息</h3>
	    <p><span>我的姓名</span><input type="text" name="sname" placeholder="请输入您的真实姓名" id="name" onblur="isName1(name)"><i id="name_i"></i></p>
	    <p><span>身份证号</span><input type="text" name="sidentify" placeholder="请输入您的身份证号码" id="code" onblur="isCode1(code)"><i id="code_i"></i></p>
	    <p><input type="button" name="" value="下一步" id="btn1" onclick="show()"></p>
    </div>
    <div class="c2" id="c22">
    	<h3>请上传身份证照片</h3>
    	<input id="pic" type="file" name = 'pic' accept = "image/*" onchange = "selectFile()"/>
    	<div id = "result"></div>
    	<p><input type="submit" name="" value="提交" id="btn2"></p>
    </div>
  </form>
</div>
</body>
<script type="text/javascript">
	   //var files = document.getElementById('pic').files;
        var form = new FormData();//通过HTML表单创建FormData对象
        var url = '127.0.0.1:8080/'
        function selectFile(){
            var files = document.getElementById('pic').files;
            console.log(files[0]);
            if(files.length == 0){
                return;
            }
            var file = files[0];
            //把上传的图片显示出来
            var reader = new FileReader();
            // 将文件以Data URL形式进行读入页面
            console.log(reader);
            reader.readAsBinaryString(file);
            reader.onload = function(f){
                var result = document.getElementById("result");
                var src = "data:" + file.type + ";base64," + window.btoa(this.result);
                result.innerHTML = '<img src ="'+src+'"/>';
            }
            console.log('file',file);
            ///////////////////
            form.append('file',file);
            console.log(form.get('file'));
            
            var xhr = new XMLHttpRequest();
            xhr.open('POST', 'handler.php', true);
            xhr.onload = function () {
            if (xhr.status !== 200) {
            console.log('An error occurred!');
         }
      };

xhr.send(formData);
        }
        function show(){
           var oC11=document.getElementById("c11");
           var oC22=document.getElementById("c22");
           var oName=document.getElementById('name');
           var oCode=document.getElementById('code');
           var rName=true;
           var rCode=true;
           
          // var oName=document.getElementById('name');
           var oName_i=document.getElementById('name_i');
           if(oName.value==''){
        		oName_i.innerHTML="您的真实姓名不能为空";
        		rName=false;
        	}
        	var regpname=/^[\u4e00-\u9fa5]{2,5}$/;
        	if(!regpname.test(oName.value)){
               oName_i.innerHTML="您的真实姓名不合法,2-5个汉字";
               return false;
             }
            oName_i.innerHTML='';
        	
        	//var oCode=document.getElementById('code');
        	var oCode_i=document.getElementById('code_i');
        	if(oCode.value==''){
        		oCode_i.innerHTML="您的身份证号码不能为空";
        		 rCode=false;
        	}
        	var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
            if(reg.test(oCode.value) === false)
            {
            oCode_i.innerHTML="您的身份证输入不合法";
                  rCode=false;
            }
        	oCode_i.innerHTML='';
        	
        	if(rName==false){
        	   oName_i.innerHTML="您的真实姓名不合法,2-5个汉字";
        	}
        	if(rCode==false){
        	   oCode_i.innerHTML="您的身份证输入不合法";
        	}
        	
           if(rName&&rCode){
           	 oC11.style.display='none';
           	 oC22.style.display='block';
           }
        }
        function isName1(name){
        	var oName=document.getElementById('name');
        	var oName_i=document.getElementById('name_i');
        	if(oName.value==''){
        		oName_i.innerHTML="您的真实姓名不能为空";
        		return false;
        	}
        	var regpname=/^[\u4e00-\u9fa5]{2,5}$/;
        	if(!regpname.test(oName.value)){
               oName_i.innerHTML="您的真实姓名不合法,2-5个汉字";
               return false;
          }
        	oName_i.innerHTML='';
        }
        function isCode1(code){
        	var oCode=document.getElementById('code');
        	var oCode_i=document.getElementById('code_i');
        	if(oCode.value==''){
        		oCode_i.innerHTML="您的身份证号码不能为空";
        		return false;
        	}
        	var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
            if(reg.test(oCode.value) === false)
            {
            oCode_i.innerHTML="您的身份证输入不合法";
            return false;
            }
        	oCode_i.innerHTML='';
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
</script>
</html>