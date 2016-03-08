package javapackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class PersonalList {
	 ArrayList<Personal> personalL=new ArrayList<Personal>();
     public ArrayList<Personal> getPersonalL(){
   	   return personalL;
     }
     public void SetPersonalL(ArrayList<Personal> personalL){
   	   this.personalL=personalL;
     }
     public PersonalList() throws ClassNotFoundException, SQLException{
   	  Connection connect = null;
   	  Statement state = null;
   	  ResultSet sel = null;
   	  try{
   		 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   		 connect = DriverManager.getConnection("jdbc:odbc:websitedata","sa","1234");
    		 state = connect.createStatement();
    		 String selete = "SELECT * FROM Personal";
    		 sel = state.executeQuery(selete); 
   	    while(sel.next()){
   	    	Personal Example = new Personal();
   	    	Example.setPersonal_id(sel.getInt("PersonalId"));
   	    	Example.setPersonal_name(sel.getString("PersonalName"));
   	    	Example.setPersonal_sex(sel.getString("PersonalSex"));
   	    	Example.setPersonal_old(sel.getInt("PersonalOld"));
   	    	Example.setPersonal_like(sel.getString("PersonalLike"));
   	    	Example.setPersonal_autograph(sel.getString("PersonalAutograph"));
   	    	personalL.add(Example);
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
