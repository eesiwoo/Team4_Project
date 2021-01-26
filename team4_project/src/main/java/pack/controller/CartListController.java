package pack.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.GoodsDaoInter;
import pack.model.GoodsDto;

@Controller
public class CartListController {
	
	@Autowired
	private GoodsDaoInter goodsDaoInter;
	
	@RequestMapping(value = "cartGoods", method=RequestMethod.GET)
	public ModelAndView showCartGoods(@RequestParam("user_id") String user_id) {
		//로그인 후, 세션 검사 로직 필요. 
		//DB에서 장바구니 데이터를 가져오기
		ArrayList<GoodsDto> cartList = new ArrayList<GoodsDto>();
		cartList = (ArrayList<GoodsDto>)goodsDaoInter.getCartGoodsList(user_id);
		
		ModelAndView mav = new ModelAndView("cartList");
		mav.addObject("cartList", cartList);
		return mav;
	}
	
	
	@RequestMapping(value = "insertCartGoods", method=RequestMethod.GET)
	public ModelAndView insertCartGoods(CartBean cartBean) {
		System.out.println("cartbean.getCart_id() : "+ cartBean.getCart_id());
		// json으로 넘겨줘야하나? msg : 장바구니 담기 성공 or 실패.
		// ajax 처리 추가로하기 
		// test하기 위해 잠시 RequestMethod.get으로 변경 

		if(goodsDaoInter.insertCartGoods(cartBean)) {
			// 성공하면
			// 장바구니에 담겼습니다를 표시 
		} else {
			// 실패 
		}
		
		/* 
		 * 장바구니에 상품 추가하기. if문으로 중복된 상품은 제거.
		 * user_id, cart_id는 히든으로 넘겼겠지~?
		 * 근데 cart_id는 user_id 와 goods_id 조합해야됨. 
		 */
		
		return null;
	}
	
}
