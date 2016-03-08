package javapackage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class JournalServlet extends HttpServlet{

	public void doGet(HttpServletRequest req, HttpServletResponse resq)
			throws IOException, ServletException {
		doPost(req, resq);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resq)
			throws IOException, ServletException {
		// 获取文本框的值
		req.setCharacterEncoding("gb2312");
		resq.setContentType("text/html;charset=gb2312"); 
		String act = req.getParameter("act");
		Connection connect = null;
    	Statement state = null;
		if(act.equals("a")){
		    String journal_name = req.getParameter("journal_name");
		    String journal_time = req.getParameter("journal_time");
		    String journal_content = req.getParameter("journal_content");
			try {
			  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    		  connect = DriverManager.getConnection("jdbc:odbc:websitedata","sa","1234");
    		  state = connect.createStatement();
    		  String updatestr = "Insert Into Journal Values('"+
    		  journal_name+"','"+journal_time+"','"+journal_content+"')";
     		  state.executeUpdate(updatestr);
			} catch(SQLException se) {
			     System.out.println("SQLException while Inserting " +
	                        "Journal "  + " : " + se.getMessage());
	        } catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				try {
					state.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
                try {
					connect.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} 
			RequestDispatcher dispatcher = req.getRequestDispatcher("/Right_Journal.jsp");
	        if (dispatcher != null) {
			        dispatcher.forward(req, resq);
		    }
		 }
		 else if(act.equals("b")){
	         String journal_id = req.getParameter("journal_id");
	   		 String qstr = "Delete Journal "
	   	          + " Where JournalID = " + journal_id ;
	   	        try {
	   	        	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	      		    connect = DriverManager.getConnection("jdbc:odbc:websitedata","sa","1234");
	      		    state = connect.createStatement();
	      		    state.executeUpdate(qstr);
	   	            
	   	        } catch(SQLException se) {
	   	            System.out.println("SQLException while deleting " +
	   	                        "Journal " + journal_id + " : " + se.getMessage());
	   	        } catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} finally {
	   	            try {
						connect.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
	   	            try {
						state.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
	   	        }  
				RequestDispatcher dispatcher = req.getRequestDispatcher("/Right_Journal.jsp");
		        if (dispatcher != null) {
				        dispatcher.forward(req, resq);
			    }
	   	 }
	}
}
