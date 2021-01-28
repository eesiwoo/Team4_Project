package pack.model;

import java.util.List;

import pack.controller.CartBean;
import pack.controller.GoodsBean;

public interface GoodsDaoInter {

	// product를 클릭하게 되면 해당 상품을 가져오기 
	public GoodsDto getGoodsSearch(int goods_id);
	
	// productList에 보여질 상품 모두 가져오기  
	public List<GoodsDto> getGoodsList();
	
	// index에 보여질 상품 무작위로 num개 가져오기 
	public List<GoodsDto> getGoodsRandomList(int num);
	
	// cartList에 보여질 상품 리스트 가져오기   
	public List<GoodsDto> getCartGoodsList(String user_id);
	
	// goods에 상품 추가하기   
	public Boolean insertGoods(GoodsBean bean);
	
	// cartList에 상품 추가하기   
	public Boolean insertCartGoods(CartBean cartBean);
	
	// category 가져오기   
	public List<CategoryDto> selectCategory();
}
