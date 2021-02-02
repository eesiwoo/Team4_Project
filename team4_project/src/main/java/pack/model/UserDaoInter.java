package pack.model;

import pack.controller.UserBean;

public interface UserDaoInter {
	// 회원가입
	public Boolean insertUser(UserBean bean);
}
