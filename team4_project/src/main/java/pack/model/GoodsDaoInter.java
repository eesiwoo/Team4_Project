package pack.model;

import java.util.List;

public interface GoodsDaoInter {

	// product를 클릭하게 되면 해당 상품을 가져오기 
	public GoodsDto getGoodsSearch(int goods_id);

	// index에 보여질 상품 무작위로 1개 가져오기 
	public GoodsDto getGoodsRandom1List(int num);
	
	// productList에 보여질 상품 모두 가져오기  
	public List<GoodsDto> getGoodsList();
	
	// index에 보여질 상품 무작위로 4개 가져오기 
	public List<GoodsDto> getGoodsRandom4List(int num);
	
	// cartList에 보여질 상품 리스트 가져오기   
	public List<GoodsDto> getCartGoodsList();
	
	
}
