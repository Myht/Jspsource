<%@ page language="java" contentType="text/html;charset=GB2312"  %>
<%@ page import="java.util.*" %>
<%@ page import="javapackage.Journals" %>
<%@ page import="javapackage.JournalsList" %>
<%!
	//�����ض��ؼ��ֵ���־����
	public Journals searchJournal(ArrayList<Journals> journalsList,String journal_id){
	     Journals jls=null;
	     for(Journals me:journalsList){
	      if(journal_id.equals(String.valueOf(me.getjournal_id()))){
	         jls=me;
	         break;         
	      }  
	    }
	    return jls;
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>     
    <title>Right_Journal_Check</title>
  </head>
 <body>
     <h1 align="center">��־</h1><hr/>
     <div>
     <% 
      JournalsList jl = new JournalsList();
      ArrayList<Journals> goodsList=jl.getJournalsList();
      Journals jls = null;//�в���ֵ����ʾ��һ�����
      if(request.getParameter("journal_id")!=null){
           String journal_id = request.getParameter("journal_id");
           jls=searchJournal(goodsList,journal_id);
           out.print("<table align='center'>");
           out.print("<tr><td>��־ƪ�ºţ�"+journal_id+"</td></tr>");
           out.print("<tr><td>��־���⣺"+jls.getJournal_name()+"</td></tr>");
           out.print("<tr><td>��־���ݣ�"+jls.getJournal_content()+"</td></tr>");
           out.print("<tr><td><a href='Right_Journal.jsp'>������־�б�</a></td></tr>");
           out.print("</table>");
      }  
     %>
     </div><hr/>
  </body>
