package pack.controller;

import java.util.ArrayList;
import java.util.List;

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
		ModelAndView mav = new ModelAndView();
		System.out.println("session : " + session);
		ArrayList<GoodsDto> goodsList;
		GoodsDto goods = goodsDaoInter.getGoodsSearch(goods_id);
		if (goods == null) {
			mav.setViewName("goodserror");
			String msg = "가져온 상품이 없습니다." ;
			mav.addObject("error", msg);
			return mav;
		}
		System.out.println("goods : " + goods);
		// session이 비어있나 확인 
		if (session.getAttribute("recentGoodsList") != null) {
			goodsList = (ArrayList<GoodsDto>)session.getAttribute("recentGoodsList"); 
			System.out.println("session is not null");
		} else {
			goodsList = new ArrayList<GoodsDto>();
			System.out.println("session is null");
		}
		System.out.println("if문 통과 ");
		goodsList.add(goods);		
	
		System.out.println("goodsList  : " + goodsList);
		// 최근 본 상품 리스트에 추가.
		session.setAttribute("recentGoodsList", goodsList);
		
		// 클릭된 상품 내보내기  
		mav.addObject("goods", goods);
		mav.setViewName("goodsDetail");
		
		return mav;
	}
	
	@RequestMapping(value = "goodsRandom", method=RequestMethod.GET)
	public ModelAndView getGoodsRandom1List(@RequestParam("num") int num) {
		/* 
		 * 무작위 상품 가져오기, index에서 활용예정.   
		*/
		System.out.println("num : " + num);
		ModelAndView mav = new ModelAndView("temp");
		
			// 임의의 상품 1개
		if (num == 1) {
			GoodsDto goods;
			goods = goodsDaoInter.getGoodsRandom1List(num);
			mav.addObject("goods", goods);
			System.out.println("goods : "+ goods);
		} else {
			// 임의의 상품 4개
			ArrayList<GoodsDto> list;
			list = (ArrayList<GoodsDto>)goodsDaoInter.getGoodsRandom4List(num);
			mav.addObject("goods", list);
			System.out.println("list : "+ list);
		}
		
		return mav;
	}
	
}
