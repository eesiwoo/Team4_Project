package pack.model;

import java.util.List;

import pack.controller.CartBean;

public interface CartDaoInter {

	// cartList에 보여질 상품 리스트 가져오기   
	public List<CartDto> getCartGoodsList(String user_id);
		
	// cartList에 상품 추가하기   
	public Boolean insertCartGoods(CartBean cartBean);
	
	// cartList에 상품 삭제하기   
	public Boolean deleteCartGoods(CartBean cartBean);
}
