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

import pack.model.CartDaoInter;
import pack.model.CartDto;

@Controller
public class CartListController {
	
	@Autowired
	private CartDaoInter cartDaoInter;
	
	@RequestMapping(value = "cartGoods", method=RequestMethod.GET)
	public ModelAndView showCartGoods(HttpServletRequest request, HttpServletResponse response) {
		//DB에서 장바구니 데이터를 가져오기
		System.out.println("showCartGoods 시작");
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("user_id");
	
		
		ArrayList<CartDto> cartList = new ArrayList<CartDto>();
		cartList = (ArrayList<CartDto>)cartDaoInter.getCartGoodsList(user_id);
		
		ModelAndView mav = new ModelAndView("cartList");
		mav.addObject("cartList", cartList);
		return mav;
	}
	
	
	@RequestMapping(value = "insertCartGoods", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> insertCartGoods(HttpServletRequest request,
			@RequestParam("goods_id") int goods_id, @RequestParam("cart_goods_cont") int cart_goods_cont, 
			CartBean bean) {
//		System.out.println("cartbean.getCart_id() : "+ cartBean.getCart_id());

		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("user_id"); 
		bean.setCart_goods_cont(cart_goods_cont);
		bean.setUser_id(user_id);
		bean.setGoods_id(goods_id);
		System.out.println("user_id : " + bean.getUser_id());
		System.out.println("goods_id : " + bean.getGoods_id());
		System.out.println("cart_goods_cont : " + bean.getCart_goods_cont());
		Map<String, Object> isSuccess = new HashMap<String, Object>();
		
		// 장바구니 중복검사
		if (cartDaoInter.getCartGoods(bean) != null) {
			System.out.println("이미 장바구니에 담긴 물품입니다.");
			isSuccess.put("msg", "이미 담긴 물품입니다");
			return isSuccess;
		}
		
		if(cartDaoInter.insertCartGoods(bean)) {
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
	
	@RequestMapping(value = "deleteCartGoods", method=RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> deleteCartGoods(CartBean cartBean){
		// db에서 삭제하기
		System.out.println("user_id : " + cartBean.getUser_id());
		System.out.println("goods_id : " + cartBean.getGoods_id());
		Boolean result = cartDaoInter.deleteCartGoods(cartBean);
		Map<String, Object> obj = new HashMap<String, Object>();
		if (result) {
			System.out.println("삭제 성공");
		} else {
			System.out.println("삭제 실패");
		}
		obj.put("isSuccess", result);
		
		return obj;
	}
	
	@RequestMapping(value="updateCartGoods", method=RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> updateCartGoods(CartBean bean){
		System.out.println("user_id : " + bean.getUser_id());
		System.out.println("goods_id : " + bean.getGoods_id());
		System.out.println("cart_goods_cont : " + bean.getCart_goods_cont());
		
		Map<String, Object> obj = new HashMap<String, Object>();
		Boolean result = cartDaoInter.updateCartGoods(bean);
		if (result) {
			System.out.println("수정 성공");
		} else {
			System.out.println("수정 실패");
		}
		obj.put("isSuccess", result);
		return obj;
	}
	
}
