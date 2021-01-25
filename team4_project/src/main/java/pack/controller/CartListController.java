package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pack.model.GoodsDaoInter;

@Controller
public class CartListController {
	
	@Autowired
	private GoodsDaoInter goodsDaoInter;
	
	@RequestMapping(value = "cartGoods", method=RequestMethod.GET)
	public ModelAndView showCartGoods() {
		
		/* 
		 * DB에서 장바구니 데이터를 가져와서 장바구니 페이지로 이동  
		 */
		
		ModelAndView mav = new ModelAndView("cartList");
		return mav;
	}
	
	
	@RequestMapping(value = "insertCartGoods", method=RequestMethod.POST)
	public ModelAndView insertCartGoods() {
		
		/* 
		 * 장바구니에 상품 추가하기. if문으로 중복된 상품은 제거. 
		 */
			
		return null;
	}
	
}
