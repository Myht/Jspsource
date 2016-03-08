package javapackage;

public class Counter {
    private int counter;
    public Counter(){
    	counter=0;
    }
    public int getCounter(){
    	return counter;
    }
    public void setCounter(int c){
    	counter=c;
    }
    public int incCounter(){
    	return (++counter);
    }
}
