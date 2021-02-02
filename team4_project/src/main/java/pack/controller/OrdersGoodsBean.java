package pack.controller;

import org.springframework.stereotype.Component;

@Component
public class OrdersGoodsBean {
	private String orders_id;
	private int goods_id, goods_cont;
	public String getOrders_id() {
		return orders_id;
	}
	public void setOrders_id(String orders_id) {
		this.orders_id = orders_id;
	}
	public int getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}
	public int getGoods_cont() {
		return goods_cont;
	}
	public void setGoods_cont(int goods_cont) {
		this.goods_cont = goods_cont;
	}

	
}
