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
		List<GoodsDto> list = goodsDaoInter.getGoodsList();
		
		ModelAndView mav = new ModelAndView("goodsList");
		mav.addObject("list", list);
		
		return mav;
	}
	

	
}
