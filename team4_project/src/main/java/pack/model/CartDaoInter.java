package pack.model;

import java.util.List;

import pack.controller.CartBean;

public interface CartDaoInter {

	// cartList에 보여질 상품 리스트 가져오기   
	public List<CartDto> getCartGoodsList(String user_id);
	
	// cart 중복검사   
	public CartDto getCartGoods(CartBean cartBean);
		
	// cart에 상품 추가하기   
	public Boolean insertCartGoods(CartBean cartBean);
	
	// cart에 상품 삭제하기   
	public Boolean deleteCartGoods(CartBean cartBean);
	
	// cart에 상품 수정하기   
	public Boolean updateCartGoods(CartBean cartBean);
}
