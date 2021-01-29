package pack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	@RequestMapping(value="login", method=RequestMethod.GET)
	public String loginGet() {
		return "login";
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public ModelAndView loginPOST() {
		
		
		
		return null;
	}
	
	@RequestMapping(value="logout")
	public ModelAndView loginOut() {
		
		/*
		 * db에서 로그인 정보 가져와서 확인하기 
		 */
		
		
		return null;
	}
}
