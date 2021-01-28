package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pack.model.UserDaoInter;

@Controller
public class UserController {
	
	@Autowired
	UserDaoInter userInter;
	
	
	@RequestMapping(value = "signup", method=RequestMethod.GET)
	public String gotoSignup() {
		return "signup";
	}
	
	@RequestMapping(value = "signup", method=RequestMethod.POST)
	public String insertSignup(UserBean bean) {
		bean.getUser_joinDate();
		System.out.println("user_name : " + bean.getUser_name());
		System.out.println("user_bDate : " + bean.getUser_bDate());
		
		Boolean isSuccess = userInter.insertUser(bean);
		// 성공하면 mypage로 실패시 회원가입페이지로 
		if(isSuccess) return "mypage"; 
		else return "redirect:signup";
	}
}
