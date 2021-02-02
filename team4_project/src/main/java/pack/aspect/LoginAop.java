package pack.aspect;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Aspect
@Component
public class LoginAop {
	@Autowired
	private LoginClass loginClass;

	@Around("execution(* showCartGoods*(..))")
	public Object aopProcess(ProceedingJoinPoint joinPoint) throws Throwable{
		System.out.println("aop 시작");
		HttpServletRequest request = null;
		HttpServletResponse response = null;
		
		for(Object obj: joinPoint.getArgs()) {
			if(obj instanceof HttpServletRequest) {
				request = (HttpServletRequest)obj;
			}
			if(obj instanceof HttpServletResponse) {
				response = (HttpServletResponse)obj;
			}
		}
		System.out.println(request);
		System.out.println(response);
		System.out.println("로그인체크");
		if(loginClass.loginCheck(request, response)) {
			return null;
		}
		System.out.println("aop 끝");
		Object object = joinPoint.proceed();
		return object;
	}
}
