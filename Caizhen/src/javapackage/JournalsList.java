package javapackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class JournalsList {
	  ArrayList<Journals> journalsL=new ArrayList<Journals>();
      public ArrayList<Journals> getJournalsList(){
    	  return journalsL;
      }
      public void SetJournalsList(ArrayList<Journals> journalsL){
    	  this.journalsL=journalsL;
      }
      public JournalsList() throws ClassNotFoundException, SQLException{
    	  Connection connect = null;
    	  Statement state = null;
    	  ResultSet sel = null;
    	  try{
    		 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    		 connect = DriverManager.getConnection("jdbc:odbc:websitedata","sa","1234");
     		 state = connect.createStatement();
     		 String selete = "SELECT * FROM Journal";
     		 sel = state.executeQuery(selete); 
    	  while(sel.next()){
    		 Journals Example = new Journals();
    		 Example.setJournal_id(sel.getInt("JournalID"));
    		 Example.setJournal_name(sel.getString("JournalName"));
    		 Example.setJournal_time(sel.getString("JournalTime"));
    		 Example.setJournal_content(sel.getString("JournalContent"));
    		 journalsL.add(Example);
    	  }
    	  state.close();
 		 connect.close();
      }catch(SQLException e){
 		 System.out.println("数据库操作失败，产生异常："+e.getMessage());
 	  }finally{
 		 if(state != null)
 			 state.close();
 		 if(connect != null)
 			 connect.close();
 	 }
   }
}
