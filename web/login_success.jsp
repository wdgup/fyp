<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
    
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
    function getContents(str){
        //首先获得用户的输入内容，这里获得的是一个结点
        var content = document.getElementById("keyword");
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
</head>
<body>
    <input type="button" id="keyword" name="keyword" value="sssds" onclick="getContents(this.value)">
</body>
</html>