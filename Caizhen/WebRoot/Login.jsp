<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<jsp:useBean id="counter" scope="application" class="javapackage.Counter"></jsp:useBean>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<!-- javascript -->
<script type="text/javascript">
	/* �۽����� */
	function focus1(thi){
	  thi.value="";
	  thi.style.background="#FFFFFF";
	}
	function focus2(thi){
	  thi.value="";
	  thi.style.background="#FFFFFF";
	  thi.type="password";	
	}
    /* ʧ������ */
    function blur1(thi){
    if(thi.value==""){
    thi.value="�������˺�";
    thi.style.color="#ADADAD";}else{
    thi.style.color="#000000";}
    thi.style.background="#D0D0D0";
    } 
    function blur2(thi){
    if(thi.value==""){
    thi.value="����������";
    thi.type="text";
    thi.style.color="#ADADAD";}else{
    thi.style.color="#000000";}
    thi.style.background="#D0D0D0";
    }
</script>

<!-- ��ʽ -->
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
<span>Ŀǰ����������<%
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
                 out.print("�������˺�");} %>"
				 onfocus="focus1(this);" onblur="blur1(this);">
				</td>
			</tr>
			<tr >				
				<td >
				<input name="Password" id="text"
				 value="<% if(request.getAttribute("userpassword")!=null){
                 java.lang.String passw=(java.lang.String)request.getAttribute("userpassword");                 
                 out.print(passw); }else{
                 out.print("����������");} %>" 
				 onfocus="focus2(this);" onblur="blur2(this);">
				</td>
			</tr>
			<tr>
				<td><input type="submit" name="Submit" id="btn" value="��   ��"></td>
			</tr>
		</table>
	  </div>
	  <p><br>Copyright �0�8 2015.<br>
        Personal Website ��Ȩ���� Author:Caizhen.</p>
	</form>
</body>
</html>
