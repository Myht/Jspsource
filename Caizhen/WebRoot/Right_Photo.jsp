<%@ page language="java" contentType="text/html;charset=GB2312"  %>
<%@ page import="java.util.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>       
    <title>Right_Photo</title>
  </head>
  
<body>
   <h1 align="center">��Ƭѡ��</h1><hr>
   <div>
   <form Name="Form1" method="post" >
   <table align="center">
      <tr><td>
	  <select name="img" >
      <option value="left_photo/1.jpg" selected="selected">���ƶ�����1</option>
      <option value="left_photo/2.jpg">���ƶ�����2</option>
      <option value="left_photo/3.jpg">���ƶ�����3</option>
      <option value="left_photo/4.jpg">���ƶ�����4</option>
      <option value="left_photo/5.jpg">���ƶ�����5</option>
      <option value="left_photo/6.jpg">���ƶ�����6</option>
      </select><br>
      <input type="submit" value="��ʾͼ��">
      </td><td>
      <p><img src=<%=request.getParameter("img") %> height="150" Width="100" alt="��ʾͼ��" ></p>
      </td></tr>
      </table>
	</form>
	</div>
	<hr >
	<div>
    <marquee  direction="left" behavior="alternate"  onmouseover="this.stop()"  onmouseout="this.start()"  >
           <img src="left_photo/1.jpg" alt="���ƶ�����1" width="100px" height="150px"  onmouseover="this.style.width=250;this.style.height=200;"   onmouseout="this.style.width=100;this.style.height=150;"/>
           <img src="left_photo/2.jpg" alt="���ƶ�����2" width="100px" height="150px"  onmouseover="this.style.width=250;this.style.height=200;"   onmouseout="this.style.width=100;this.style.height=150;"/>
           <img src="left_photo/3.jpg" alt="���ƶ�����3" width="100px" height="150px"  onmouseover="this.style.width=250;this.style.height=200;"   onmouseout="this.style.width=100;this.style.height=150;"/>
           <img src="left_photo/4.jpg" alt="���ƶ�����4" width="100px" height="150px"  onmouseover="this.style.width=250;this.style.height=200;"   onmouseout="this.style.width=100;this.style.height=150;"/>
           <img src="left_photo/5.jpg" alt="���ƶ�����5" width="100px" height="150px"  onmouseover="this.style.width=250;this.style.height=200;"   onmouseout="this.style.width=100;this.style.height=150;"/>
           <img src="left_photo/6.jpg" alt="���ƶ�����6" width="100px" height="150px"  onmouseover="this.style.width=250;this.style.height=200;"   onmouseout="this.style.width=100;this.style.height=150;"/>
    </marquee>
    </div>
    <hr >
  </body>
</html>
