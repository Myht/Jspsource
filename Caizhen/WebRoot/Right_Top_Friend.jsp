<%@ page language="java" contentType="text/html;charset=GB2312"  %>
<%@ page import="java.util.*" %>
<%@ page import="javapackage.Personal" %>
<%@ page import="javapackage.PersonalList" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>Right_Top_Friend</title>
  </head>
  
<body>
    <h1 align="center">添加好友</h1><hr/>
    <div>
    <%
    out.print("<form action='topfriendaction?act=a' method='post'>");
    out.print("<table align=center>");
    out.print("<tr><td>姓名：</td><td><input type=text name=friend_name ></td></tr>");
    out.print("<tr><td>性别：</td><td><input type=text name=friend_sex ></td></tr>");
    out.print("<tr><td>年龄：</td><td><input type=text name=friend_old ></td></tr>");
    out.print("<tr><td>爱好：</td><td><input type=text name=friend_like ></td></tr>");
    out.print("<tr><td>个性签名：</td><td><input style='width:250px;height:100px' type=text name=friend_autograph></td></tr>");
    out.print("<tr align=center><td colspan=2><input type=submit value=添加好友列表></td></tr>");
    out.print("</table>");
    out.print("</form>");
    %>
    </div><hr>
  </body>
</html>
