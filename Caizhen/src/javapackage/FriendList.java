package javapackage;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class FriendList {
	ArrayList<Friend> friendLs=new ArrayList<Friend>();
	private Connection connect = null;
	public ArrayList<Friend> getFriendLs(){
		return friendLs;
	}
	public void setFriendLs(ArrayList<Friend> friendLS){
		this.friendLs=friendLS; 
	}
    public FriendList() throws ClassNotFoundException, SQLException{
  	  Statement state = null;
  	  ResultSet sel = null;
  	  try{
  		 getDBConnection();
   		 state = connect.createStatement();
   		 String selete = "SELECT * FROM Friend";
   		 sel = state.executeQuery(selete); 
  	     while(sel.next()){
  		 Friend Example = new Friend();
  		 Example.setFriend_id(sel.getInt("FriendID"));
  		 Example.setFriend_name(sel.getString("FriendName"));
  		 Example.setFriend_sex(sel.getString("FriendSex"));
  		 Example.setFriend_old(sel.getInt("FriendOld"));
  		 Example.setFriend_like(sel.getString("FriendLike"));
  		 Example.setFriend_autograph(sel.getString("FriendAutograph"));
  		 friendLs.add(Example);
  	  }
  	    closeStatement(state);
  	    closeConnection();
      }catch(SQLException e){
		 System.out.println("数据库操作失败，产生异常："+e.getMessage());
	  }finally{
		  closeStatement(state);
		  closeConnection();
	 }
 }
    
    private void getDBConnection(){
	 	try
		{
    		  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    		  connect=DriverManager.getConnection("jdbc:odbc:websitedata","sa","1234");  
		}
		catch(ClassNotFoundException e1){
			
		}
		catch(SQLException e2){
			
	    }
    }
    private  void closeConnection()  {
        try {
            if (connect != null && !connect.isClosed()) {
            	connect.close();
            }
        } catch(SQLException se) {
        	System.out.println("SQLException while closing " +
                            "DB connection  : " + se.getMessage());
        }
    }  
  
    private  void closeStatement(Statement stmt)  {
        try {
            if (stmt != null) {
                stmt.close();
            }
        } catch(SQLException se) {
        	System.out.println("SQLException while closing " +
                            "statement  : " + se.getMessage());
        }
    }
}
