package com.dailingnan.aop;

import org.aspectj.lang.ProceedingJoinPoint;

public class MyCheck {
	public void before(){
		//System.out.println("ִ��֮ǰ");
	}
	public void after(){
		//System.out.println("ִ��֮��");
	}
	public void around(ProceedingJoinPoint joinPoint){
		 Object[] args = joinPoint.getArgs();
		 System.out.println(joinPoint.getSignature());
		System.out.println("around");
		
	}
}
