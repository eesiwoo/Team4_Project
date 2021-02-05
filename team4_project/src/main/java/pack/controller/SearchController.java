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

import pack.model.GoodsDaoInter;

@Controller
public class SearchController {

	@Autowired
	GoodsDaoInter goodsDaoInter;
	
	@RequestMapping(value = "searchGoods", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> searchGoods(@RequestParam("keyword") String keyword) {
		ArrayList<String> list = (ArrayList<String>)goodsDaoInter.getGoodsSearchKeyword(keyword);
		Map<String, Object> obj = new HashMap<String, Object>();
		
		obj.put("data", list);
		return obj;
	}
}
