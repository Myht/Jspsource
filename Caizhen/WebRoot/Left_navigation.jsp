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
       <span>��ӭ����,<br></span>            
       <p><%=session.getAttribute("username")%><a href="Login.jsp" target="_top">�˳�</a></p>   
       <hr>
       <ul>
       <li><a href="Right_Main.jsp" target="right" >��ҳ</a></li>
       <li><a href="Right_Journal.jsp" target="right">��־</a></li>
       <li><a href="Right_Photo.jsp" target="right">���</a></li>
       <li><a href="Right_Message_Board.jsp" target="right">���԰�</a></li>
       <li><a href="Right_Personal.jsp" target="right">ĳ��</a></li>       
       <li><a href="Right_Friend.jsp" target="right">����</a></li>             
       </ul>
  </body>
</html>
