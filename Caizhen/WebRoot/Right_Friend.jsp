<%@ page language="java" contentType="text/html;charset=GB2312"  %>
<%@ page import="java.util.*" %>
<%@ page import="javapackage.Friend" %>
<%@ page import="javapackage.Friendcurrent" %>
<%@ page import="javapackage.FriendList" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
        <title>Right_Friend</title>
  </head>
  
  <body>
    <h1 align="center">好友列表</h1><hr/>
    <div>
    <%
    String ii;
    Friendcurrent current=new Friendcurrent();
    if(request.getParameter("idaction")==null){
        int i;
        if(session.getAttribute("isLoggedIn")!=null || Boolean.parseBoolean(session.getAttribute("isLoggedIn").toString()))
        {   
               ArrayList<Friend> friendLs = new ArrayList<Friend>();
               FriendList example = new FriendList();
			   friendLs=example.getFriendLs();
               i=friendLs.size()-1;
        }else{
               i=0;
        }
        current.setI(i);
    }
    else if(request.getParameter("idaction").equals("a")){
        ii=request.getParameter("ii");
        int i=Integer.parseInt(ii);
        if(i>0){
				i = i - 1;
		}
		current.setI(i);

    }
	else if (request.getParameter("idaction").equals("c")) {
	         ArrayList<Friend> friendLs=new ArrayList<Friend>();
	         FriendList example = new FriendList();
		     friendLs=example.getFriendLs();
		     ii=request.getParameter("ii");
             int i=Integer.parseInt(ii);
	         if(friendLs.size()>0){
				if(i<friendLs.size()-1){
					i=i+1;
				}else{
					i=friendLs.size()-1;
				}
			 }	
			 current.setI(i);
	}
    Friend frien= current.getCurrentFriend();
    out.print("<form method=post>");
    out.print("<table align='center'>");
    out.print("<tr><td>姓名：</td><td>"+frien.getFriend_name()+"</td></tr>");
    out.print("<tr><td>性别：</td><td>"+frien.getFriend_sex()+"</td></tr>");
    out.print("<tr><td>年龄：</td><td>"+frien.getFriend_old()+"</td></tr>");
    out.print("<tr><td>爱好：</td><td>"+frien.getFriend_like()+"</td></tr>");
    out.print("<tr><td>个性签名：</td><td>"+frien.getFriend_autograph()+"</td></tr>");
    out.print("<tr><td colspan='2'>");
    out.print("<a href='Right_Friend.jsp?idaction=a&ii="+current.getI()+"'><input type='button' value='上一页'></a>");
    out.print("<a href='friendaction?act=b&friendid="+frien.getFriend_id()+"'><input type='button' value='删除好友'></a>");
    out.print("<a href='Right_Friend.jsp?idaction=c&ii="+current.getI()+"'><input type='button' value='下一页'></a>");
    out.print("</td></tr>");
    out.print("</table>");
    out.print("</form>");
    %>
    </div>
    <hr/>
  </body>
</html>
