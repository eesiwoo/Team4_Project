package pack.model;

public class CartDto {

	private int goods_id, cart_goods_cont, goods_discountRate, goods_price;
	private String goods_name, goods_state, goods_img;
	
	public int getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(int goods_price) {
		this.goods_price = goods_price;
	}
	public int getGoods_discountRate() {
		return goods_discountRate;
	}
	public void setGoods_discountRate(int goods_discountRate) {
		this.goods_discountRate = goods_discountRate;
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
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public String getGoods_state() {
		return goods_state;
	}
	public void setGoods_state(String goods_state) {
		this.goods_state = goods_state;
	}
	public String getGoods_img() {
		return goods_img;
	}
	public void setGoods_img(String goods_img) {
		this.goods_img = goods_img;
	}
	
}
