package pack.model;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pack.controller.CartBean;

@Repository
public class CartDaoImpl extends SqlSessionDaoSupport implements CartDaoInter{
	
	@Autowired
	public CartDaoImpl(SqlSessionFactory factory) {
		setSqlSessionFactory(factory);
	}
	
	@Override
	public List<CartDto> getCartGoodsList(String user_id) {
		return getSqlSession().selectList("selectCartListAll", user_id);
	}
	
	@Override
	public Boolean insertCartGoods(CartBean cartBean) {
		int re = getSqlSession().insert("insertCartGoods", cartBean);
		if (re == 1) return true; 
		else return false;
	}
}