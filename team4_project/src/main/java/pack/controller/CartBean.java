package pack.controller;

import org.springframework.stereotype.Component;

@Component
public class CartBean {
	private String user_id;
	private int goods_id, cart_goods_cont;

	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}
	public int getCart_goods_cont() {
		return cart_goods_cont;
	}
	public void setCart_goods_cont(int cart_goods_cont) {
		this.cart_goods_cont = cart_goods_cont;
	}
	
	
}
