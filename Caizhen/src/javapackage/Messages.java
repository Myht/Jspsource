package javapackage;

public class Messages {
    int message_id;
    String messsage_content;
    public void setMessage_id(int message_id){
    	this.message_id=message_id;
    }
    public int getMessage_id(){
    	return message_id;
    }
    public void setMessage_content(String message_content){
    	this.messsage_content=message_content;
    }
    public String getMessage_content(){
    	return messsage_content;
    }
}
