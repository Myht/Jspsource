package javapackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class MessagesList {
	 ArrayList<Messages> messagesL=new ArrayList<Messages>();
     public ArrayList<Messages> getMessagesL(){
   	   return messagesL;
     }
     public void SetMessagesL(ArrayList<Messages> messagesL){
   	   this.messagesL=messagesL;
     }
     public MessagesList() throws ClassNotFoundException, SQLException{
   	  Connection connect = null;
   	  Statement state = null;
   	  ResultSet sel = null;
   	  try{
   		 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   		 connect = DriverManager.getConnection("jdbc:odbc:websitedata","sa","1234");
    		 state = connect.createStatement();
    		 String selete = "SELECT * FROM MessageBoard";
    		 sel = state.executeQuery(selete); 
   	    while(sel.next()){
   		 Messages Example = new Messages();
   		 Example.setMessage_id(sel.getInt("MessageID"));
   		 Example.setMessage_content(sel.getString("MesssageContent"));
   		 messagesL.add(Example);
   	    }
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
