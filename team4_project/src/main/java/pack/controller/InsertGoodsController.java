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
	private GoodsDaoInter productDaoInter;
	
	@RequestMapping(value = "insertProduct", method=RequestMethod.GET)
	public String insertProduct() {
		// admin 으로 이동 	 
		return "admin";
	}
	
	@RequestMapping(value = "insertProduct", method=RequestMethod.POST)
	public ModelAndView insertProduct(GoodsBean bean) {
		
		/* 
		 * admin 계정일때 db로 상품 데이터를 insert하는 메서드 
		*/
		
		return null;
	}
}
