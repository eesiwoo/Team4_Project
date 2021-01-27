package pack.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pack.model.CategoryDto;
import pack.model.GoodsDaoInter;

@Controller
public class InsertGoodsController {

	@Autowired
	private GoodsDaoInter goodsDaoInter;
	
	@RequestMapping(value = "admin", method=RequestMethod.GET)
	public ModelAndView gotoAdminPage() {
		// admin 으로 이동 	
		// categoryList
		ArrayList<CategoryDto> list = (ArrayList<CategoryDto>)goodsDaoInter.selectCategory();
		System.out.println("list : " + list);
		return new ModelAndView("admin", "categoryList", list);
	}
	
	@RequestMapping(value = "insertGoods", method=RequestMethod.POST)
	public ModelAndView insertGoods(HttpServletRequest request, GoodsBean bean) {
		
		System.out.println("goods_name : " + bean.getGoods_name());
		System.out.println("goods_img : " + bean.getGoods_img());
		System.out.println("category_id : " + bean.getCategory_id());
		System.out.println("goods_state : " + bean.getGoods_state());
		
		return null;
	}
}
