package pack.controller;

public class CartBean {
	private String cart_id, user_id;
	private int goods_id, cart_goods_cont;
	public String getCart_id() {
		return cart_id;
	}
	public void setCart_id(String goods_id, String user_id) {
		this.cart_id = user_id+"_"+goods_id;
	}
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
