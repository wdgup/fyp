<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title></title>
  <style type="text/css">
  *{
    box-sizing: border-box;
  }
      body{
        background-image: url(image/bg.jpg);
        background-repeat: no-repeat;
        background-size: 1500px 600px;
        margin: 0;
        padding: 0;
      }
      .dv{
        width: 1500px;
        height: 100px;
        background-color: lightblue;
        text-align: center;
        line-height: 100px;
        font-size: 40px;
        font-weight: bold;
        margin-bottom: 30px;
      }
      .container{
        width: 400px;
        height: 450px;
        margin: 0 auto;
        border: 1px solid #fff;
        border-radius: 4px;
        background: #fff;
        padding: 20px 30px;
      }
      form{
        position: relative;
      }
      .container input{
        display: inline-block;
        width: 250px;
        height: 30px;
        line-height: 30px;
        border: 1px solid gray;
        border-radius: 4px;
        position: absolute;
        right: 10px;
        outline: none;
        padding: 10px;
      }
      .container{
        font-weight: bold;
      }
      #btn1{
        display: inline-block;
        width: 300px;
        height: 40px;
        line-height: 40px;
        text-align: center;
        padding: 0;
        font-size: 15px;
        font-weight: bold;
        background: lightblue;
        cursor: pointer;
      }
  </style>
  
 <script type="text/javascript">
   function check() {
//验证姓名
    var regpname=/^[\u4e00-\u9fa5]{2,5}$/;
    var pname= document.getElementById("pname");
    if(!regpname.test(pname.value)){
         pname.value="";
         pname.placeholder="姓名为2-5汉字";
         return false;
    }
//验证年龄   
    var regpage=/^[0-9]{1,2}$/;
    var page= document.getElementById("page");
    if(!regpage.test(page.value)){
         page.value="";
         page.placeholder="年龄范围为0-99岁";
         return false;
    }
//验证身高
    var regpheight=/^1[0-9]{2}$/;
    var pheight= document.getElementById("pheight");
    if(!regpheight.test(pheight.value)){
         pheight.value="";
         pheight.placeholder="身高范围为100-199cm";
         return false;
    }
//验证学历
    var peducation= document.getElementById("peducation");
    if(peducation.value==""){
         peducation.placeholder="学历不能为空";
         return false;
    }
    if(peducation.value.length>10){
         peducation.value="";
         peducation.placeholder="请简洁输入学历";
         return false;
    } 
//收入
    var pmoney= document.getElementById("pmoney");
    if(pmoney.value==""){
         pmoney.placeholder="收入不能为空";
         return false;
    } 
    
    var regpmoney=/^[0-9]{1,10}$/;
    if(!regpmoney.test(pmoney.value)){
         pmoney.value="";
         pmoney.placeholder="收入格式错误，请填写数字(月薪)";
         return false;
    }
    
    if(pmoney.value.length>10){
         pmoney.value="";
         pmoney.placeholder="收入超过10位数";
         return false;
    } 
//手机号
    var regpphonenumber=/^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
    var pphonenumber= document.getElementById("pphonenumber");
    if(!regpphonenumber.test(pphonenumber.value)){
         pphonenumber.value="";
         pphonenumber.placeholder="手机号码格式错误";
         return false;
    }
//验证密码
    var regppassword=/^\w{6,20}$/;
    var ppassword= document.getElementById("ppassword");
    if(!regppassword.test(ppassword.value)){
         ppassword.value="";
         ppassword.placeholder="密码长度6-20位，包含字母数字下划线";
         return false;
    }   
//验证重复密码
    var prepassword= document.getElementById("prepassword");  
    if(prepassword.value!=ppassword.value){
         prepassword.value="";
         prepassword.placeholder="两次密码不一致";
         return false;
    }
    
    return true;
  }
</script>
</head>

<body>
<div class="dv">执子之手，与子偕老</div>
<div class="container"> 
  <form action="register_deal.jsp" method="post"  accept-charset="UTF-8" onsubmit="return check()">
    <h3>编辑征婚资料</h1>
    <p>姓名 <input type="text" id="pname" name="name" value=""></p>
    <p>年龄 <input type="text" id="page" name="age"></p>
    <p>身高 <input type="text" id="pheight" name="height"></p>
    <p>学历 <input type="text" id="peducation" name="education"></p>
    <p>收入 <input type="text" id="pmoney" name="money"></p>
    <p>手机号<input type="text" id="pphonenumber" name="phonenumber"></p>
    <p>密码 <input type="password" id="ppassword" name="password"></p>
    <p>确认密码 <input type="password" id="prepassword" name="repassword"></p>
    <p><input type="submit" name="submit" value="立即注册" id="btn1"></p>
  </form>
</div>
</body>
</html>