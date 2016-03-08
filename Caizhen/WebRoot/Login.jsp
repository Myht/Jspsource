<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<jsp:useBean id="counter" scope="application" class="javapackage.Counter"></jsp:useBean>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<!-- javascript -->
<script type="text/javascript">
	/* 聚焦函数 */
	function focus1(thi){
	  thi.value="";
	  thi.style.background="#FFFFFF";
	}
	function focus2(thi){
	  thi.value="";
	  thi.style.background="#FFFFFF";
	  thi.type="password";	
	}
    /* 失焦函数 */
    function blur1(thi){
    if(thi.value==""){
    thi.value="请输入账号";
    thi.style.color="#ADADAD";}else{
    thi.style.color="#000000";}
    thi.style.background="#D0D0D0";
    } 
    function blur2(thi){
    if(thi.value==""){
    thi.value="请输入密码";
    thi.type="text";
    thi.style.color="#ADADAD";}else{
    thi.style.color="#000000";}
    thi.style.background="#D0D0D0";
    }
</script>

<!-- 样式 -->
<style type="text/css">
 td{ text-align:center;}
 table{
    position:absolute;
    width:200px;
    height:350px;
    top:70px;
    left:500px;
    background:#FFFFFF;
    border: solid thin black;
 }
 p{
    position:absolute;
    bottom:100px;
    left:520px; 
    text-align:center;
 }
 #text{
    background:#D0D0D0;
    color:#ADADAD;
 }
 #btn{
    background:#FF7575;
    width:155px;
 }
 .img{
    z-index:-1;
    position:fixed; 
    width:100%;
    height:100%;
 }
 span{float:right;margin-top:15px; margin-right:100px;}
</style>

<title>Personal Website</title>
</head>

<body >

<img  src="photo/Login-background.jpg" class="img"> 
<span>目前访问人数：<%
	if (session.isNew())
		counter.incCounter();
%>
	<%=counter.getCounter()%></span>
	<form action="Login" method="post">
	  <div>
		<table>
		    <tr>
		        <td ><img src="photo/Login.png"></td>
		    </tr>
			<tr>				
				<td >
				<input type="text" name="Name" id="text"
				 value="<% if(request.getAttribute("username")!=null){
                 java.lang.String name=(java.lang.String)request.getAttribute("username");
                 out.print(name); }else{    
                 out.print("请输入账号");} %>"
				 onfocus="focus1(this);" onblur="blur1(this);">
				</td>
			</tr>
			<tr >				
				<td >
				<input name="Password" id="text"
				 value="<% if(request.getAttribute("userpassword")!=null){
                 java.lang.String passw=(java.lang.String)request.getAttribute("userpassword");                 
                 out.print(passw); }else{
                 out.print("请输入密码");} %>" 
				 onfocus="focus2(this);" onblur="blur2(this);">
				</td>
			</tr>
			<tr>
				<td><input type="submit" name="Submit" id="btn" value="登   入"></td>
			</tr>
		</table>
	  </div>
	  <p><br>Copyright © 2015.<br>
        Personal Website 版权所有 Author:Caizhen.</p>
	</form>
</body>
</html>
