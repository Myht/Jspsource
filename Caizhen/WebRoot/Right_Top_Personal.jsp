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
 
    <h1 align="center">�༭��������</h1><hr/>
    <div>
    <%
    PersonalList pl = new PersonalList();
    ArrayList<Personal> personalList =  pl.getPersonalL();
    for(Personal person:personalList){
    out.print("<form action='personalaction?id="+person.getPersonal_id()+"' method='post'>");
    out.print("<table align=center>");
    out.print("<tr><td>������</td><td><input type=text name=personal_name value="+person.getPersonal_name()+"></td></tr>");
    out.print("<tr><td>�Ա�</td><td><input type=text name=personal_sex value="+person.getPersonal_sex()+"></td></tr>");
    out.print("<tr><td>���䣺</td><td><input type=text name=personal_old value="+person.getPersonal_old()+"></td></tr>");
    out.print("<tr><td>���ã�</td><td><input type=text name=personal_like value="+person.getPersonal_like()+"></td></tr>");
    out.print("<tr><td>����ǩ����</td><td><input style='width:250px;height:100px' type=text name=personal_autograph value="+person.getPersonal_autograph()+"></td></tr>");
    out.print("<tr align=center><td colspan=2><input type=submit value=����>");
    out.print("</td></tr>");
    out.print("</table>");
    out.print("</form>");
    }
    %>
    </div><hr>
  </body>
</html>
