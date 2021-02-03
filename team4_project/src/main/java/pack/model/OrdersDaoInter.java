package pack.model;

import java.util.ArrayList;

import pack.controller.OrdersBean;
import pack.controller.OrdersGoodsBean;

public interface OrdersDaoInter {
	
	// 주문 정보 가져오기
	public ArrayList<OrdersDto> getOrders(String user_id);
	
	// 주문 내역 가져오기
	public ArrayList<OrdersGoodsDto> getOrdersGoods(String orders_id);
	
	// 상품 주문하기
	public Boolean insertOrders(OrdersBean bean);
	
	// 상품 테이블 입력하기
	public Boolean insertOrdersGoods(OrdersGoodsBean bean);
	
}
