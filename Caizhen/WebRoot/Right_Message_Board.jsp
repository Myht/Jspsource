<%@ page language="java" contentType="text/html;charset=GB2312"  %>
<%@ page import="java.util.*" %>
<%@ page import="javapackage.Messages" %>
<%@ page import="javapackage.MessagesList" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>Right_Message_Board</title>
</head>
  
  <body>
  <h1 align="center">留言板</h1><hr>
    <div>
    <% 
     MessagesList ml=new MessagesList();
     ArrayList<Messages> messagesList =  ml.getMessagesL();
     out.print("<table align='center' >");
     out.print("<tr><td width=40>"+"楼层"+"</td>");
     out.print("<td width=100>"+"发表内容"+"</td>");
     out.print("<td width=80 colspan=2>"+"操作"+"</td>");
     out.print("</tr>");
     for(Messages message:messagesList){
     out.print("<tr>");
     out.print("<td>"+message.getMessage_id()+"楼</td>");
     out.print("<td>"+message.getMessage_content()+"</td>");
     out.print("<td><a href='messageaction?act=d&messageid="+message.getMessage_id()+"'>删除</a></td>");
     out.print("</tr>");
     }
     out.print("<tr>");
     out.print("<td colspan=3><a href='#'>首页</a>&nbsp;");
     out.print("<a href='#'>上一页</a>&nbsp;");
     out.print("第【1】页&nbsp;");
     out.print("<a href='#'>下一页</a>&nbsp;");
     out.print("<a href='#'>尾页</a></td>");
     out.print("</tr>");
     out.print("</table>");
     %>
    </div>
    <hr>
  </body>
</html>
