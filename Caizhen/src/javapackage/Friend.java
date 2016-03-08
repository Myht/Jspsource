package javapackage;

public class Friend {
      int  friend_id;
      String friend_name;
      String friend_sex;
      int friend_old; 
      String friend_like;
      String friend_autograph;
      public void setFriend_id(int friend_id){
    	  this.friend_id=friend_id; 
      }
      public int getFriend_id(){
    	  return friend_id;
      }
      public void setFriend_name(String friend_name){
    	  this.friend_name=friend_name;
      }
      public String getFriend_name(){
    	  return friend_name;
      }      
      public void setFriend_sex(String friend_sex){
    	  this.friend_sex=friend_sex;
      }
      public String getFriend_sex(){
    	  return friend_sex;
      }
      public void setFriend_old(int friend_old){
	      this.friend_old=friend_old;
      }
      public int getFriend_old(){
    	  return friend_old;
      }
      public void setFriend_like(String friend_like){
	      this.friend_like=friend_like;
      }
      public String getFriend_like(){
    	  return friend_like;
      }
      public void setFriend_autograph(String friend_autograph){
	      this.friend_autograph=friend_autograph;
      }
      public String getFriend_autograph(){
    	  return friend_autograph;
      }
}
