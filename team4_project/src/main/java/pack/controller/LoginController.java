package pack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	@RequestMapping(value="login", method=RequestMethod.GET)
	public ModelAndView loginGet() {
		/*
		 * 로그인 화면으로 이동
		 */
		
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public ModelAndView loginPOST() {
		
		/*
		 * db에서 로그인 정보 가져와서 확인하기 
		 */
		
		
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
