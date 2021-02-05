package pack.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pack.model.LoginInter;
import pack.model.UserDto;

@Controller
public class LoginController {

	@Autowired
	LoginInter loginInter; 
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String loginGet() {
		return "login";
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	 public String loginPOST(HttpServletRequest request, HttpServletResponse response,
									@RequestParam("user_id") String user_id, 
									@RequestParam("user_pwd") String user_pwd ) {
		
		HttpSession session = request.getSession();
		UserDto dto = loginInter.loginUser(user_id);
		if (dto != null) {
			if (user_pwd.equals(dto.getUser_pwd())) {
				session.setAttribute("user_id", user_id);
				System.out.println(dto.getUser_code());
				session.setAttribute("user_code", dto.getUser_code());
				//mav.setViewName("redirect:/index.jsp");
				System.out.println("session에 저장.");
				System.out.println("hihi");
				
				return "redirect:/index.jsp";
			}
		}
		request.setAttribute("msg", "아이디 또는 비밀번호 오류입니다.");
		return "login";
		
			
	}
	
	@RequestMapping(value="logout")
	public String loginOut(HttpSession session) {
		session.removeAttribute("user_id");
		session.removeAttribute("user_code");
		session.removeAttribute("review_id");
		return "redirect:/index.jsp";
	}
}
