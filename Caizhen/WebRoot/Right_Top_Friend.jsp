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
    <h1 align="center">��Ӻ���</h1><hr/>
    <div>
    <%
    out.print("<form action='topfriendaction?act=a' method='post'>");
    out.print("<table align=center>");
    out.print("<tr><td>������</td><td><input type=text name=friend_name ></td></tr>");
    out.print("<tr><td>�Ա�</td><td><input type=text name=friend_sex ></td></tr>");
    out.print("<tr><td>���䣺</td><td><input type=text name=friend_old ></td></tr>");
    out.print("<tr><td>���ã�</td><td><input type=text name=friend_like ></td></tr>");
    out.print("<tr><td>����ǩ����</td><td><input style='width:250px;height:100px' type=text name=friend_autograph></td></tr>");
    out.print("<tr align=center><td colspan=2><input type=submit value=��Ӻ����б�></td></tr>");
    out.print("</table>");
    out.print("</form>");
    %>
    </div><hr>
  </body>
</html>
