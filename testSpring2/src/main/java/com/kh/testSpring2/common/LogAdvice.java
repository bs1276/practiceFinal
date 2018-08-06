package com.kh.testSpring2.common;

import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LogAdvice {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Pointcut("execution(* com.kh.testSpring2..*Service.*(..))") //Pointcut
	public void allPointcut() {}
	
	@Before("allPointcut()")  //Advice
	public void printLog(JoinPoint jp) {
		
		System.out.println("  호출 된 메소드 : " + jp.getSignature().getName());
		log.info("로거  : " + jp.getSignature().getName());
	}
}
