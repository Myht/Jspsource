<%@ page language="java" contentType="text/html;charset=GB2312"  %>
<%@ page import="java.util.*" %>
<%@ page import="javapackage.Journals" %>
<%@ page import="javapackage.JournalsList" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>     
    <title>Right_Journal</title>
  </head>
  
  <body>
    <h1 align="center">��־�б�</h1><hr>
    <div>
    <% 
     JournalsList jl=new JournalsList();
     ArrayList<Journals> journalsList =  jl.getJournalsList();
     out.print("<table align='center'>");
     out.print("<tr><td width=40>"+"���"+"</td>");
     out.print("<td width=100>"+"��־����"+"</td>");
     out.print("<td width=200>"+"����ʱ��"+"</td>");
     out.print("<td width=80 colspan=2>"+"����"+"</td>");
     out.print("</tr>");
     for(Journals journal:journalsList){
     out.print("<tr>");
     out.print("<td>"+journal.getjournal_id()+"</td>");
     out.print("<td>"+journal.getJournal_name()+"</td>");
     out.print("<td>"+journal.getJournal_time()+"</td>");
     out.print("<td><a href='Right_Journal_Check.jsp?journal_id="+journal.getjournal_id()+"'>�鿴</a></td>");
     out.print("<td><a href='journalaction?journal_id="+journal.getjournal_id()+"&act=b'>ɾ��</a></td>");
     out.print("</tr>");
     }
     out.print("<tr>");
     out.print("<td><a href='#'>��ҳ</a></td>");
     out.print("<td><a href='#'>��һҳ</a></td>");
     out.print("<td>�ڡ�1��ҳ</td>");
     out.print("<td><a href='#'>��һҳ</a></td>");
      out.print("<td><a href='#'>βҳ</a></td>");
     out.print("</tr>");
     out.print("</table>");
     %>
     </div><hr>
  </body>
</html>
