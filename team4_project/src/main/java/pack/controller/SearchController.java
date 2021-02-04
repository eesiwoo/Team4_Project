package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pack.model.GoodsDaoInter;

@Controller
public class SearchController {

	@Autowired
	GoodsDaoInter goodsDaoInter;
	
	@RequestMapping(value = "searchGoods", method=RequestMethod.POST)
	public String searchGoods(@RequestParam("keyword") String keyword) {
		ArrayList<String> list
		goodsDaoInter.getGoodsSearchKeyword(keyword);
		
		return null;
	}
}
