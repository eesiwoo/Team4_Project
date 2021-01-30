package pack.model;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginImpl extends SqlSessionDaoSupport implements LoginInter{
	
	@Autowired
	public LoginImpl(SqlSessionFactory factory) {
		setSqlSessionFactory(factory);
	}
	
	@Override
	public UserDto loginUser(String user_id) {
		return getSqlSession().selectOne("loginUser", user_id);
	}
}
