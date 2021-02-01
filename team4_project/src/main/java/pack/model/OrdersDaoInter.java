package pack.model;

import pack.controller.OrdersBean;

public interface OrdersDaoInter {
	
	// 상품 주문하기
	public Boolean insertOrders(OrdersBean bean);
}
