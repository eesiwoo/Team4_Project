package pack.model;

import pack.controller.UserBean;

public interface UserDaoInter {
	// 회원가입
	public Boolean insertUser(UserBean bean);
	
	// 회원정보 가져오기
	public UserDto selectUser(String user_id);
	
	// 회원정보 수정하기
	public Boolean updateUser(UserBean bean);
}
