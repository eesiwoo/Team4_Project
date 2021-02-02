package pack.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class OrdersBean {
	private String orders_id, user_id, orders_name, orders_tel, orders_addr; 
	private String orders_comment, orders_state, orders_date;
	private String orders_price, goodsPrice, discountprice, goods_id, goods_cont;
	
	public String getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}
	public String getGoods_cont() {
		return goods_cont;
	}
	public void setGoods_cont(String goods_cont) {
		this.goods_cont = goods_cont;
	}
	public String getOrders_id() {
		return orders_id;
	}
	public void setOrders_id(String orders_id) {
		this.orders_id = orders_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getOrders_name() {
		return orders_name;
	}
	public void setOrders_name(String orders_name) {
		this.orders_name = orders_name;
	}
	public String getOrders_tel() {
		return orders_tel;
	}
	public void setOrders_tel(String orders_tel) {
		this.orders_tel = orders_tel;
	}
	public String getOrders_addr() {
		return orders_addr;
	}
	public void setOrders_addr(String orders_addr) {
		this.orders_addr = orders_addr;
	}
	public String getOrders_comment() {
		return orders_comment;
	}
	public void setOrders_comment(String orders_comment) {
		this.orders_comment = orders_comment;
	}
	public String getOrders_state() {
		return orders_state;
	}
	public void setOrders_state(String orders_state) {
		this.orders_state = orders_state;
	}
	public String getOrders_date() {
		return orders_date;
	}
	public void setOrders_date() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		this.orders_date = sdf.format(new Date(Calendar.getInstance().getTimeInMillis()));
	}
	public String getOrders_price() {
		return orders_price;
	}
	public void setOrders_price(String orders_price) {
		this.orders_price = orders_price;
	}
	public String getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(String goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public String getDiscountprice() {
		return discountprice;
	}
	public void setDiscountprice(String discountprice) {
		this.discountprice = discountprice;
	}
	
	
}
