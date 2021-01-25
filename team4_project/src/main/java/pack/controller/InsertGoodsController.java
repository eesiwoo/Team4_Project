package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.GoodsDaoInter;

@Controller
public class InsertGoodsController {

	@Autowired
	private GoodsDaoInter goodsDaoInter;
	
	@RequestMapping(value = "insertGoods", method=RequestMethod.GET)
	public String insertGoods() {
		// admin 으로 이동 	 
		return "admin";
	}
	
	@RequestMapping(value = "insertGoods", method=RequestMethod.POST)
	public ModelAndView insertGoods(GoodsBean bean) {
		
		/* 
		 * admin 계정일때 db로 상품 데이터를 insert하는 메서드 
		*/
		
		return null;
	}
}
