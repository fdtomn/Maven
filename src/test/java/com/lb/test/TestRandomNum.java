package com.lb.test;

import java.util.Random;

import org.junit.Test;

public class TestRandomNum {

	@Test
	public void getRandomNum(){
		
		Random random = new Random();
		int nextInt ;
		for(int i=0;i<20;i++){
			
			nextInt = random.nextInt(3);
			System.out.println(nextInt);
		}
		
		
	}
}
