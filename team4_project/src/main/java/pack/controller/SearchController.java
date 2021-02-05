package pack.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import pack.model.GoodsDaoInter;
import pack.model.GoodsDto;

@Controller
public class SearchController {

	@Autowired
	GoodsDaoInter goodsDaoInter;
	
	@RequestMapping(value = "searchGoodsSuggest", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> searchGoodsSuggest(@RequestParam("keyword") String keyword) {
		System.out.println("searchGoods 시작");
		System.out.println("keyword: " +keyword);
		ArrayList<String> list = (ArrayList<String>)goodsDaoInter.getGoodsSearchKeywordSuggest(keyword);
		System.out.println("list : " + list);
		Map<String, Object> obj = new HashMap<String, Object>();
		
		obj.put("datas", list);
		System.out.println("obj : " + obj);
		System.out.println("searchGoods 완료");
		return obj;
	}
	
	@RequestMapping(value = "searchGoods", method=RequestMethod.POST)
	public ModelAndView searchGoods(@RequestParam("searchKeyword") String searchKeyword) {
		ArrayList<GoodsDto> list = (ArrayList<GoodsDto>)goodsDaoInter.getGoodsSearchKeyword(searchKeyword);
		
		ModelAndView mav = new ModelAndView("goodsList");
		mav.addObject("list", list);
		return mav;
	}
}
