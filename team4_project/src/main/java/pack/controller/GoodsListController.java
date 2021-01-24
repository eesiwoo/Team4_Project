package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.GoodsDaoInter;

@Controller
public class GoodsListController {
	
	@Autowired
	private GoodsDaoInter productDaoInter;
	
	@RequestMapping(value = "productList", method=RequestMethod.GET)
	public ModelAndView productList() {
		
		/* 
		 * 상품 리스트 모두 가져오기
		 * productList에 뿌리기 
		 */
		
		ModelAndView mav = new ModelAndView("productList");	
		return mav;
	}
	
	@RequestMapping(value = "random4ProductList", method=RequestMethod.GET)
	public ModelAndView random4ProductList() {
		
		/* 
		 * 무작위 4개 상품 리스트 가져오기
		 * index에 뿌리기   
		 */
			
		return null;
	}

	
}
