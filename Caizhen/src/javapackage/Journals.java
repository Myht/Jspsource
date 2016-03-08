package javapackage;

public class Journals {
	int journal_id;
    String journal_name=null;
    String journal_time=null;
    String journal_content=null;
    public int getjournal_id(){
    	return journal_id;
    }
    public void setJournal_id(int journal_id){
    	this.journal_id=journal_id;
    }
    public String getJournal_name(){
    	return journal_name;
    }
    public void setJournal_name(String journal_name){
    	this.journal_name=journal_name;
    }
    public String getJournal_time(){
    	return journal_time;
    }
    public void setJournal_time(String journal_time){
    	this.journal_time=journal_time;
    }
    public String getJournal_content(){
    	return journal_content;
    }
    public void setJournal_content(String journal_content){
    	this.journal_content=journal_content;
    }
}
