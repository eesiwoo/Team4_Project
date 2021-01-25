package pack.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pack.model.GoodsDaoInter;
import pack.model.GoodsDto;

@Controller
public class GoodsListController {
	
	@Autowired
	private GoodsDaoInter goodsDaoInter;
	
	@RequestMapping(value = "goodsList", method=RequestMethod.GET)
	public ModelAndView productList() {
		System.out.println("1");
		List<GoodsDto> list = goodsDaoInter.getGoodsList();
		System.out.println("2");
		System.out.println(list);
		
		ModelAndView mav = new ModelAndView("goodsList");
		mav.addObject("list", list);
		
		return mav;
	}
	
	@RequestMapping(value = "random4GoodsList", method=RequestMethod.GET)
	public ModelAndView random4GoodsList() {
		
		/* 
		 * 무작위 4개 상품 리스트 가져오기
		 * index에 뿌리기   
		 */
			
		return null;
	}

	
}
