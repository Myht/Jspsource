<%@ page language="java" contentType="text/html;charset=GB2312"  %>
<%@ page import="java.util.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>Right_Message_Board</title>
  </head>
  
  <body>
  <h1 align="center">���԰�</h1><hr>
    <h2 align="center">�������׶��ҵ����ԣ�</h2>
    <div>
    <form action="messageaction?act=c" method="post">
    <table align="center">
    <tr><td>�������������ݣ�</td>
    <td>
    <textarea name="messagecontent" rows="8" cols="70"></textarea>
    </td></tr>
    <tr align="center"><td colspan=2>
    <input type="submit" value="����" />
    <input type="reset" value="����"/>
    </td></tr>
    </table>
    </form>
    </div>
    <hr>
  </body>
</html>
