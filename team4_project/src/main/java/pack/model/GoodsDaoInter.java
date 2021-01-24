package pack.model;

import java.util.ArrayList;

public interface GoodsDaoInter {

	// product를 클릭하게 되면 해당 상품을 가져오기 
	public GoodstDto getProductSearch(String prd_no);

	// index에 보여질 상품 무작위로 1개 가져오기 
	public GoodstDto getProductRandom1List();
	
	// productList에 보여질 상품 모두 가져오기  
	public ArrayList<GoodstDto> getProductList();
	
	// index에 보여질 상품 무작위로 4개 가져오기 
	public ArrayList<GoodstDto> getRandom4ProductList();
	
	// right에 보여질(최근 본 상품) 상품 리스트 가져오기  
	public ArrayList<GoodstDto> getRecentProductList();
	
	// cartList에 보여질 상품 리스트 가져오기   
	public ArrayList<GoodstDto> getCartProductList();
	
	
}
