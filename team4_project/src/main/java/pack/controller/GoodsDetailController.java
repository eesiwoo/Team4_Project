package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.GoodsDaoInter;

@Controller
public class GoodsDetailController {
	
	@Autowired
	private GoodsDaoInter goodsDaoInter;
	
	@RequestMapping(value = "goods", method=RequestMethod.GET)
	public ModelAndView goods(@RequestParam("goods_id") String goods_id) {
		
		/* 
		 * prd_no인 상품 1개 가져오기
		*/
		
		/*
		 * - productDetail에 가져온내용 뿌리기
		 * - 최근 본 상품 리스트에 추가. 
		 */
		
		ModelAndView mav = new ModelAndView("goodDetail");
		return mav;
	}
	
	@RequestMapping(value = "getGoodsRandom1List", method=RequestMethod.GET)
	public ModelAndView getGoodsRandom1List() {
		
		/* 
		 * 무작위 상품 1개 가져오기, index에서 활용예정.   
		*/
		
		return null;
	}
}
