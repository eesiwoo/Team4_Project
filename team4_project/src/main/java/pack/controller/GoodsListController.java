package pack.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.GoodsDaoInter;
import pack.model.GoodsDto;

@Controller
public class GoodsListController {
	
	@Autowired
	private GoodsDaoInter goodsDaoInter;
	
	@RequestMapping(value = "goodsList", method=RequestMethod.GET)
	public ModelAndView productList(@RequestParam("num") int num) {
		List<GoodsDto> list;
		if(num == 0) {
			list = goodsDaoInter.getGoodsList();
		} else {
			list = goodsDaoInter.getGoodsList();
		}
		
		
		Collections.shuffle(list);
		ModelAndView mav = new ModelAndView("goodsList");
		mav.addObject("list", list);
		
		return mav;
	}
	
	@RequestMapping(value = "goodsListSpec", method=RequestMethod.GET)
	public ModelAndView goodsListSpec(@RequestParam("num") int num) {
		ArrayList<GoodsDto> list = (ArrayList<GoodsDto>)goodsDaoInter.getSepcGoodsList(num);
		
		ModelAndView mav = new ModelAndView("goodsList");
		mav.addObject("list", list);
		
		return mav;
	}
	

	
}
