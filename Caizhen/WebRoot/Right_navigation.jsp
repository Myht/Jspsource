<%@ page language="java" contentType="text/html;charset=GB2312"  %>
<%@ page import="java.util.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Right_navigation</title>
    <style type="text/css">
      * { margin:0px auto; padding:0; font-family: Verdana, Arial, Helvetica; font-size:14px; }
      a{ text-decoration:none;}
      a:hover { color:red; }
      #menu {  width:720px; height:25px; padding-top:8px; padding-left:20px; margin:10px; }
      #menu { list-style-type:none; }    /* ����ʾ�б������ */
      #menu li { width:72px; float:left; margin-right:50px;margin-left:50px;text-align:center;}  /* �б����󸡶� */
    </style>
  </head>
  <body>
     <ul id="menu">     
      <li><a href="Right_Top_Journal.jsp" target="right"><img src="../photo/top_journal.png"></a></li> 
      <li><a href="Right_Top_Message.jsp" target="right"><img src="../photo/top_message_board.png"></a></li>
      <li><a href="Right_Top_Personal.jsp" target="right"><img src="../photo/top_personal.png"></a></li> 
      <li><a href="Right_Top_Friend.jsp" target="right"><img src="../photo/top_friends.png"></a></li>
    </ul>
    <br>
    <ul id="menu">     
      <li><a href="Right_Top_Journal.jsp" target="right">д��־</a></li> 
      <li><a href="Right_Top_Message.jsp" target="right">д����</a></li>
      <li><a href="Right_Top_Personal.jsp" target="right">�༭����</a></li> <!-- �ɸ�����Ŀzy�ķ�ʽ�� -->
      <li><a href="Right_Top_Friend.jsp" target="right">��Ӻ���</a></li>
    </ul>
  </body>
</html>

