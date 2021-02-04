package pack.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pack.controller.OrdersBean;
import pack.controller.OrdersGoodsBean;

@Repository
public class OrdersDaoImpl extends SqlSessionDaoSupport implements OrdersDaoInter{
	 
	@Autowired
	public OrdersDaoImpl(SqlSessionFactory factory) {
		setSqlSessionFactory(factory);
	}
	
	@Override
	public ArrayList<OrdersDto> getOrders(String user_id) {
		System.out.println("ArrayList<OrdersDto> getOrders(String user_id)");
		return (ArrayList)getSqlSession().selectList("selectOrders", user_id);
	}
	
	@Override
	public Boolean insertOrders(OrdersBean bean) {
		int re = getSqlSession().insert("insertOrders", bean);
		if (re == 1) return true;
		else return false;
	}
	@Override
	public Boolean insertOrdersGoods(OrdersGoodsBean bean) {
		int re = getSqlSession().insert("insertOrdersGoods", bean);
		if (re == 1) return true;
		else return false;
	}
	
	@Override
	public ArrayList<OrdersGoodsDto> getOrdersGoods(String orders_id) {
		// 
		return (ArrayList)getSqlSession().selectList("selectOrdersGoods", orders_id);
	}
	
}
