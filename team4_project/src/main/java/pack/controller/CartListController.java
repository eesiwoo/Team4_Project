package pack.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
public class CartListController {
	
	@Autowired
	private GoodsDaoInter goodsDaoInter;
	
	@Autowired 
	CartBean cartBean;
	
	@RequestMapping(value = "cartGoods", method=RequestMethod.GET)
	public ModelAndView showCartGoods(HttpServletRequest request, HttpServletResponse response) {
		//로그인 후, 세션 검사 로직 필요. 
		//DB에서 장바구니 데이터를 가져오기
		System.out.println("showCartGoods 시작");
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("user_id");
	
		
		ArrayList<GoodsDto> cartList = new ArrayList<GoodsDto>();
		cartList = (ArrayList<GoodsDto>)goodsDaoInter.getCartGoodsList(user_id);
		
		ModelAndView mav = new ModelAndView("cartList");
		mav.addObject("cartList", cartList);
		return mav;
	}
	
	
	@RequestMapping(value = "insertCartGoods", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> insertCartGoods(HttpServletRequest request,
			@RequestParam("goods_id") int goods_id, @RequestParam("cart_goods_cont") int cart_goods_cont) {
//		System.out.println("cartbean.getCart_id() : "+ cartBean.getCart_id());
		/* 
		 * cart_id =user_id +'_'+ goods_id;  
		 */
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("user_id"); 
		cartBean.setCart_goods_cont(cart_goods_cont);
		cartBean.setUser_id(user_id);
		cartBean.setGoods_id(goods_id);
		cartBean.setCart_id(cartBean.getUser_id()+"_"+cartBean.getGoods_id());
		System.out.println("Cart_id : " + cartBean.getCart_id());
		System.out.println("user_id : " + cartBean.getUser_id());
		System.out.println("goods_id : " + cartBean.getGoods_id());
		System.out.println("cart_goods_cont : " + cartBean.getCart_goods_cont());
		Map<String, Object> isSuccess = new HashMap<String, Object>();
		
		if(goodsDaoInter.insertCartGoods(cartBean)) {
			// 성공
			System.out.println("장바구니 담기 성공");
			isSuccess.put("msg", "장바구니 담기 성공");
		} else {
			// 실패
			System.out.println("장바구니 담기 실패");
			isSuccess.put("msg", "장바구니 담기 실패");
		}
		return isSuccess;
		
		
	}
	
}
