<%@ page language="java" contentType="text/html;charset=GB2312"  %>
<%@ page import="java.util.*" %>
<%@ page import="javapackage.Personal" %>
<%@ page import="javapackage.PersonalList" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>Right_Personal</title>
  </head>
  
  <body>
    <h1 align="center">��������</h1><hr/>
    <div>
    <% 
    PersonalList pl = new PersonalList();
    ArrayList<Personal> personalList =  pl.getPersonalL();
    out.print("<table align=center>");
    for(Personal person:personalList){
    out.print("<tr><td>������</td><td>"+person.getPersonal_name()+"</td></tr>");
    out.print("<tr><td>�Ա�</td><td>"+person.getPersonal_sex()+"</td></tr>");
    out.print("<tr><td>���䣺</td><td>"+person.getPersonal_old()+"</td></tr>");
    out.print("<tr><td>���ã�</td><td>"+person.getPersonal_like()+"</td></tr>");
    out.print("<tr><td>����ǩ����</td><td>"+person.getPersonal_autograph()+"</td></tr>");
    }
    out.print("<tr align=center><td colspan=2><a href='Right_Top_Personal.jsp'>�༭��������</a></td></tr>");
    out.print("</table>");
    %>
    </div><hr>
  </body>
</html>
