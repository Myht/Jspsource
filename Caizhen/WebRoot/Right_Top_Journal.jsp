<%@ page language="java" contentType="text/html;charset=GB2312"   %>
<%@ page import="java.util.*" %>
<%@ page import="javapackage.Journals" %>
<%@ page import="javapackage.JournalsList" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Right_Top_Journal</title>
  </head>

  
<body>
   <h1 align="center">写日志</h1><br><hr>
  <div>
  <form action="journalaction?act=a" method="post">
    <table align="center">
    <tr><td>日志标题(必填)：</td>
        <td><input type="text" name="journal_name" 
                    value=<%if(request.getAttribute("journal_name")!=null){
                      java.lang.String journal_name=(java.lang.String)request.getAttribute("journal_name");
                      out.print(journal_name); 
                        }%>></td></tr>
    <tr><td>日志编写时间(必填)：</td>
        <td><input type="text" name="journal_time" 
                    value=<%if(request.getAttribute("journal_time")!=null){
                       java.lang.String journal_time=(java.lang.String)request.getAttribute("journal_time");
                      out.print(journal_time);  }%>></td></tr>
    <tr><td>日志内容(必填)：</td>
        <td><textarea rows="5" cols="50" name="journal_content" 
                      value=<%if(request.getAttribute("journal_content")!=null){
                      java.lang.String journal_time=(java.lang.String)request.getAttribute("journal_content");
                      out.print(journal_time); 
                      }%>></textarea></td></tr>
    <tr align="center"><td colspan="2"><input type="submit" name="" value="发表"><input type="reset" name="" value="重置"></td></tr>
    </table>
    </form>
    </div><hr>
</body>
</html>
