package pack.model;

import java.sql.Timestamp;

public class GoodsDto {
	
	private int goods_id, category_id, goods_price, goods_discountRate;
	private String goods_name, goods_detail, goods_delivery, goods_img, goods_reg, goods_state;
	private String goods_shortDesc, goods_shelfLife, goods_allergy, goods_info, goods_saleUnit, goods_weight;
	private Timestamp goods_saleBegin, goods_saleEnd, goods_regDate;
	
	
	public String getGoods_saleUnit() {
		return goods_saleUnit;
	}
	public void setGoods_saleUnit(String goods_saleUnit) {
		this.goods_saleUnit = goods_saleUnit;
	}
	public String getGoods_weight() {
		return goods_weight;
	}
	public void setGoods_weight(String goods_weight) {
		this.goods_weight = goods_weight;
	}
	public String getGoods_shortDesc() {
		return goods_shortDesc;
	}
	public void setGoods_shortDesc(String goods_shortDesc) {
		this.goods_shortDesc = goods_shortDesc;
	}
	public String getGoods_shelfLife() {
		return goods_shelfLife;
	}
	public void setGoods_shelfLife(String goods_shelfLife) {
		this.goods_shelfLife = goods_shelfLife;
	}
	public String getGoods_allergy() {
		return goods_allergy;
	}
	public void setGoods_allergy(String goods_allergy) {
		this.goods_allergy = goods_allergy;
	}
	public String getGoods_info() {
		return goods_info;
	}
	public void setGoods_info(String goods_info) {
		this.goods_info = goods_info;
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
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	public int getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(int goods_price) {
		this.goods_price = goods_price;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public String getGoods_detail() {
		return goods_detail;
	}
	public void setGoods_detail(String goods_detail) {
		this.goods_detail = goods_detail;
	}
	public String getGoods_delivery() {
		return goods_delivery;
	}
	public void setGoods_delivery(String goods_delivery) {
		this.goods_delivery = goods_delivery;
	}
	public String getGoods_img() {
		return goods_img;
	}
	public void setGoods_img(String goods_img) {
		this.goods_img = goods_img;
	}
	public String getGoods_reg() {
		return goods_reg;
	}
	public void setGoods_reg(String goods_reg) {
		this.goods_reg = goods_reg;
	}
	public String getGoods_state() {
		return goods_state;
	}
	public void setGoods_state(String goods_state) {
		this.goods_state = goods_state;
	}
	public Timestamp getGoods_saleBegin() {
		return goods_saleBegin;
	}
	public void setGoods_saleBegin(Timestamp goods_saleBegin) {
		this.goods_saleBegin = goods_saleBegin;
	}
	public Timestamp getGoods_saleEnd() {
		return goods_saleEnd;
	}
	public void setGoods_saleEnd(Timestamp goods_saleEnd) {
		this.goods_saleEnd = goods_saleEnd;
	}
	public Timestamp getGoods_regDate() {
		return goods_regDate;
	}
	public void setGoods_regDate(Timestamp goods_regDate) {
		this.goods_regDate = goods_regDate;
	}
	
	
}
