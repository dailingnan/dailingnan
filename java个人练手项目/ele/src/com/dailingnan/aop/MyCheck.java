package com.dailingnan.aop;

import org.aspectj.lang.ProceedingJoinPoint;

public class MyCheck {
	public void before(){
		//System.out.println("执行之前");
	}
	public void after(){
		//System.out.println("执行之后");
	}
	public void around(ProceedingJoinPoint joinPoint){
		 Object[] args = joinPoint.getArgs();
		 System.out.println(joinPoint.getSignature());
		System.out.println("around");
		
	}
}
