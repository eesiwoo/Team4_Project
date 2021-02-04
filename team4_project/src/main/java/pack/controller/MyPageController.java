package pack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyPageController {
	
	@RequestMapping(value = "mypage", method=RequestMethod.GET)
	public ModelAndView showmypage() {
		/* 
			db에서 mypage에 관련된 데이터 가져오기.	
		*/
		
		ModelAndView mav = new ModelAndView("my_showOrders"); 
		return mav;
	}

	
}
