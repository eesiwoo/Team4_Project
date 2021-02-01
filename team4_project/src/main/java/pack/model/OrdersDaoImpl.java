package pack.model;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pack.controller.OrdersBean;

@Repository
public class OrdersDaoImpl extends SqlSessionDaoSupport implements OrdersDaoInter{
	 
	@Autowired
	public OrdersDaoImpl(SqlSessionFactory factory) {
		setSqlSessionFactory(factory);
	}
	
	@Override
	public Boolean insertOrders(OrdersBean bean) {
		int re = getSqlSession().insert("", bean);
		if (re == 1) return true;
		else return false;
	}
	
}
