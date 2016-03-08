<%@ page language="java" contentType="text/html;charset=GB2312"  %>
<%@ page import="java.util.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
      <title>Left_navigation</title>      
  <style type="text/css">
    ul{list-style-type:none;}        
    li{padding:10px 20px;width:120px;margin-left:65px;}   
    a{ text-decoration:none;}
    a:hover { color:red; } 
    span{font-family:STXingkai;font-size:30;margin-left:50px;}
    p{margin-left:60px;}   
  </style>
  </head>
  
  <body >
       <br><br><br><br><br><br><br><br><br><br><br><br><br>
       <span>欢迎回来,<br></span>            
       <p><%=session.getAttribute("username")%><a href="Login.jsp" target="_top">退出</a></p>   
       <hr>
       <ul>
       <li><a href="Right_Main.jsp" target="right" >主页</a></li>
       <li><a href="Right_Journal.jsp" target="right">日志</a></li>
       <li><a href="Right_Photo.jsp" target="right">相册</a></li>
       <li><a href="Right_Message_Board.jsp" target="right">留言板</a></li>
       <li><a href="Right_Personal.jsp" target="right">某君</a></li>       
       <li><a href="Right_Friend.jsp" target="right">好友</a></li>             
       </ul>
  </body>
</html>
