package org.reliacode;

public class Sandwich {

	public Sandwich() {
		// TODO Auto-generated constructor stub
	}
	
	public boolean makes(String description){
		System.out.println("Making sandwich: " + description);
		return true;
	}

	public boolean eat(){
		boolean res;
		
		if(makes("peanut butter and jelly")){
			System.out.println("Yum! Good!");
			res = true;
		} else {
			System.out.println("Skipping lunch today, eh?");
			res = false;
		}
		
		return res;
	}
}
