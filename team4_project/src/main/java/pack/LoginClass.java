package pack.aspect;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;

@Component
public class LoginClass {
	public boolean loginCheck(HttpServletRequest request, HttpServletResponse response) throws Exception{
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("user_id"));
		if(session.getAttribute("user_id") == null) {
			response.sendRedirect("login");
			return true;
		} else {
			return false;
		}
	}
}
