package pack.aspect;

import java.util.Scanner;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class RunAspect {
	@Around("execution(public void startProcess())")
	public Object trace(ProceedingJoinPoint joinpoint) throws Throwable{
		System.out.println("AOP 시작 : 핵심프로그래밍 처리 전 id검증");
		
		System.out.print("input id :");
		Scanner scanner = new Scanner(System.in);
		String id = scanner.nextLine();
		if(!id.equalsIgnoreCase("aa")) {
			System.out.println("id 불일치!!! 작업을 종료");
			return null;
		}
		
		Object obj = joinpoint.proceed();
		
		return obj;
	}
}
