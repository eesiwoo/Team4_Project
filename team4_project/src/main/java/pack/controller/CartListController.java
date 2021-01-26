package pack.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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
public class CartListController {
	
	@Autowired
	private GoodsDaoInter goodsDaoInter;
	
	@RequestMapping(value = "cartGoods", method=RequestMethod.GET)
	public ModelAndView showCartGoods(@RequestParam("user_id") String user_id) {
		//로그인 후, 세션 검사 로직 필요. 
		//DB에서 장바구니 데이터를 가져오기
		ArrayList<GoodsDto> cartList = new ArrayList<GoodsDto>();
		cartList = (ArrayList<GoodsDto>)goodsDaoInter.getCartGoodsList(user_id);
		
		ModelAndView mav = new ModelAndView("cartList");
		mav.addObject("cartList", cartList);
		return mav;
	}
	
	
	@RequestMapping(value = "insertCartGoods", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> insertCartGoods(CartBean cartBean) {
//		System.out.println("cartbean.getCart_id() : "+ cartBean.getCart_id());
		/* 
		 * cart_id =user_id +'_'+ goods_id;  
		 */
		Map<String, Object> isSuccess = new HashMap<String, Object>();
		cartBean.setCart_id(cartBean.getUser_id()+"_"+cartBean.getGoods_id());
		
		if(goodsDaoInter.insertCartGoods(cartBean)) {
			// 성공
			System.out.println("장바구니 담기 성공");
			isSuccess.put("msg", "success");
		} else {
			// 실패
			System.out.println("장바구니 담기 실패");
			isSuccess.put("msg", "fail");
		}
		return isSuccess;
		
		
	}
	
}
