package com.kh.testSpring2.common;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.util.StopWatch;

@Service
@Aspect
public class LogAdvice2 {
	
	@Pointcut("execution(* com.kh.testSpring2..*Service.*(..))") //Pointcut
	public void allPointcut2() {}
	
	@Around("allPointcut2()")
	public Object aroundLosg(ProceedingJoinPoint pp) throws Throwable{
		//사전, 사후 처리를 모두 해결하고자 할 때 사용하는 어드바이스이다.
		String methodName = pp.getSignature().getName();
		
		StopWatch stopWatch = new StopWatch();
		stopWatch.start();
		
		Object obj = pp.proceed();
		
		stopWatch.stop();
		
		System.out.println(methodName + "() 메소드 수행에 걸린 시간 : " + stopWatch.getTotalTimeMillis() + "(ms)초");
		
		return obj;
	}
}
