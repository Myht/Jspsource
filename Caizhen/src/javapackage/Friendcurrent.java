package javapackage;

import java.sql.SQLException;
import java.util.ArrayList;

public class Friendcurrent {
	public int i;//i的值为要对其进行操作的雇员对象在列表中的索引
	ArrayList<Friend> friendLs=new ArrayList<Friend>();
	public void setI(int i){
		this.i=i;
	}
	public int getI(){
		return i;
	}
	public Friend getCurrentFriend() throws ClassNotFoundException, SQLException{
		FriendList example = new FriendList();
		friendLs=example.getFriendLs();
		if(friendLs.size()>0){
			Friend afriend=(Friend)friendLs.get(i);
			return afriend;
		}
		   return null;
	}
}
