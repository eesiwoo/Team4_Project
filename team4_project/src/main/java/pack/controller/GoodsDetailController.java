package pack.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.GoodsDaoInter;
import pack.model.GoodsDto;

@Controller
public class GoodsDetailController {
	
	@Autowired
	private GoodsDaoInter goodsDaoInter;
	
	@RequestMapping(value = "goods", method=RequestMethod.GET)
	public ModelAndView goods(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("goods_id") int goods_id) {
		HttpSession session = request.getSession();
		
		GoodsDto goods = goodsDaoInter.getGoodsSearch(goods_id);
		ArrayList<GoodsDto> goodsList = new ArrayList<GoodsDto>();
		goodsList.add(goods);
		
		ModelAndView mav = new ModelAndView("goodDetail");
		// 클릭된 상품 내보내기  
		mav.addObject("goods", goods);
		
		// 최근 본 상품 리스트에 추가.
		session.setAttribute("goodsList", goodsList);
		
		
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
