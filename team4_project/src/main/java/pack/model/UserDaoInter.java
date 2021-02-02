package pack.model;

import pack.controller.UserBean;

public interface UserDaoInter {
	// 회원가입
	public Boolean insertUser(UserBean bean);
	
	// 회원정보 가져오기
	public UserDto selectUser(String user_id);
}
