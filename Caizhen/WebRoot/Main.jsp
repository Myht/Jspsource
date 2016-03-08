<%@ page language="java" contentType="text/html;charset=GB2312"  %>
<%@ page import="java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head> 
    <title>Personal Website Center</title>
<link rel="stylesheet" href="css/bj.css" type="text/css" />
</head>
  
<body  style="background-color:#D0D0D0">
      <%
if(session.getAttribute("isLoggedIn")==null ||  !Boolean.parseBoolean(session.getAttribute("isLoggedIn").toString()))
        {   
            RequestDispatcher dispatcher=request.getRequestDispatcher("Login.jsp");
            if(dispatcher!=null)
                dispatcher.forward(request,response);
        }     
  %>
    <div id="webpage">
         <!-- left -->
        <div id="left_div">            
          <iframe src="Left_navigation.jsp" name="left_navigation" frameborder="no" scrolling="no" style="width:300px;height:630px;"></iframe>
        </div>        
        <!-- right -->
        <div id="right_div">
			<div id="right_top">	
			  <iframe src="Right_navigation.jsp" name="right_navigation" frameborder="no" scrolling="no" style="height:130px;width:1000px;"></iframe>
			</div>
			<div id="right_bottom">
              <iframe src="Right_Main.jsp" name="right" frameborder="no" scrolling="no" style="height:500px;width:1000px;"></iframe>
            </div>
        </div>
    </div>
</body>
</html>
