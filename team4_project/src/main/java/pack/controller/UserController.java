package pack.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pack.model.LoginInter;
import pack.model.UserDaoInter;
import pack.model.UserDto;

@Controller
public class UserController {
	
	@Autowired
	UserDaoInter userInter;
	
	@Autowired
	LoginInter loginInter;
	
	
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
	
//	@RequestMapping(value="getUserInfo", method=RequestMethod.GET)
//	@ResponseBody
//	public Map<String, Object> getUserInfo(@RequestParam("user_id") String user_id) {
//		Map<String, Object> map = new HashMap<String, Object>();
//		
//		UserDto dto = userInter.selectUser(user_id);
//		map.put("userInfo", dto);
//		return map;
//	}
	
	@RequestMapping(value="updateUser", method=RequestMethod.GET)
	public ModelAndView gotoupdateUser(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("user_id");
		UserDto dto = userInter.selectUser(user_id);
		
		return new ModelAndView("my_updateUser", "userInfo", dto);
	}
	
	@RequestMapping(value="updateUser", method=RequestMethod.POST)
	public String updateUser(HttpServletRequest request, HttpServletResponse response, 
			UserBean bean) {
		System.out.println("user_name : " + bean.getUser_name());
		System.out.println("user_bDate : " + bean.getUser_bDate());
		String user_id = bean.getUser_id();
		String user_pwd = bean.getUser_pwd();
		
		// 비밀번호 확인
		UserDto dto = loginInter.loginUser(user_id);
		String msg;
		if (dto != null) {
			if (user_pwd.equals(dto.getUser_pwd())) {
				// 업데이트 하기
				Boolean result = userInter.updateUser(bean);
				
				if (result) {
					msg = "업데이트 성공"; 
					System.out.println("업데이트 성공");
					request.setAttribute("msg1", msg);
					return "my_updateUser";
				} else {
					msg = "업데이트 실패";
					System.out.println("업데이트 실패");
				}
				request.setAttribute("msg1", msg);
				
				
			} else {
				// 비밀번호가 틀렸을 때
				msg = "비밀번호가 맞지 않습니다.";
				request.setAttribute("msg1", msg);
				
			}
			} 
		
		return "my_updateUser";
	
	}
}
