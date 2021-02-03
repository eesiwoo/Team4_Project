package pack.controller;

import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.CartDaoInter;
import pack.model.CartDto;
import pack.model.OrdersDaoInter;
import pack.model.OrdersDto;
import pack.model.UserDaoInter;
import pack.model.UserDto;

@Controller
public class OrdersController {
	
	@Autowired
	OrdersDaoInter ordersDaoInter;
	
	@Autowired
	UserDaoInter userDaoInter; 
	
	@Autowired
	CartDaoInter cartDaoInter; 
	
	@Autowired
	OrdersGoodsBean ordersGoodsBean;
	
	@Autowired
	CartBean cartBean;
	
	@RequestMapping(value="preOrders", method=RequestMethod.POST)
	public ModelAndView gotoOrderPage(HttpServletRequest request, HttpServletResponse response, 
			OrdersBean bean, @RequestParam("goods_check") String[] goods_check) {
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("user_id");
//		System.out.println(user_id);
		ArrayList<CartDto> cartList = (ArrayList<CartDto>)cartDaoInter.getCartGoodsList(user_id);
		ArrayList<CartDto> cartList_check = new ArrayList<CartDto>();
		
		// 구매 예정 목록 검사
		Iterator<CartDto> it = cartList.iterator();
		while(it.hasNext()) {
			CartDto dto = (CartDto) it.next();
			for(String goods:goods_check) {
				if (dto.getGoods_id() == Integer.parseInt(goods)) {
					cartList_check.add(dto);
				}
			}
		}
		
		UserDto userInfo = (UserDto)userDaoInter.selectUser(user_id);
		System.out.println("cartlist.get(0) : " + cartList.get(0));
		System.out.println("userInfo.getUser_id() : "+ userInfo.getUser_id());
		System.out.println("orders_price :" + bean.getOrders_price());
		System.out.println("discountprice :" + bean.getDiscountprice());
		System.out.println("goodsPrice :" + bean.getGoodsPrice());
		
		ModelAndView mav = new ModelAndView("orders");
		mav.addObject("cartList", cartList_check);
		mav.addObject("userInfo", userInfo);
		mav.addObject("orders_price", bean.getOrders_price());
		mav.addObject("discountprice", bean.getDiscountprice());
		mav.addObject("goodsPrice", bean.getGoodsPrice());
		
		return mav;
	}
	
	
	@RequestMapping(value="orders", method=RequestMethod.POST)
	public String DoOrderGoods(HttpServletRequest request, HttpServletResponse response, 
			OrdersBean bean, @RequestParam("goods_id") String[] goods_id, 
			@RequestParam("goods_cont") String[] goods_cont) {
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("user_id");
		System.out.println("user_id : " + user_id);
		System.out.println("bean.tel : " + bean.getOrders_tel());
		System.out.println("orders_addr : " + bean.getOrders_addr());
		System.out.println("orders_name : " + bean.getOrders_name());
		System.out.println("orders_price : " + bean.getOrders_price());
		bean.setOrders_date();
		String orders_id = bean.getOrders_date() + "_" + user_id;
		bean.setOrders_id(orders_id);
		String orders_state = "배송중";
		bean.setOrders_state(orders_state);
		bean.setUser_id(user_id);
		System.out.println("orders_id : " + bean.getOrders_id()); 
		
		// ordersGoodsBean 및 cartBean 값 셋팅하기 
		for (int i=0; i<goods_id.length; i++) {
			System.out.println(goods_id[i]);
			System.out.println(goods_cont[i]);
			ordersGoodsBean.setOrders_id(orders_id);
			ordersGoodsBean.setGoods_id(Integer.parseInt(goods_id[i]));
			ordersGoodsBean.setGoods_cont(Integer.parseInt(goods_cont[i]));
		}
		
		// cartBean 데이터 입력
		
		
		// db 다녀오기
		Boolean result = ordersDaoInter.insertOrders(bean);
		Boolean result2 = ordersDaoInter.insertOrdersGoods(ordersGoodsBean);
		
		// cart 수정하기 	
		
		
		if (result & result2) {
			System.out.println("result 입력 성공");
			for (int i=0; i<goods_id.length; i++) {
				cartBean.setGoods_id(Integer.parseInt(goods_id[i]));
				cartBean.setUser_id(user_id);
				
				// 이미 구매한 상품 장바구니에서 삭제하기
				Boolean result3 = cartDaoInter.deleteCartGoods(cartBean);
				if (result3) {
					System.out.println("result3 입력 성공");
				} else {
					System.out.println("result3 입력 실패");
				}
			}
		} else {
			if(!result) {
			System.out.println("result 입력 실패");
			}
			if (!result2) {
			System.out.println("result2 입력 실패");
			} 
		}
		
		return "mypage";
	}
	
	@RequestMapping(value="showOrders", method=RequestMethod.GET)
	public ModelAndView showOrders(HttpServletRequest request, HttpServletResponse response) {
		System.out.println(1111);
		System.out.println(1111);
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("user_id");
		ModelAndView mav = new ModelAndView("my_showOrders");
		
		ArrayList<OrdersDto> dao = ordersDaoInter.getOrders(user_id);
		//// 여기까지 
		System.out.println("name : " + dao.get(0).getOrders_name());
		System.out.println(1111);
		System.out.println(1111);
		
		
		return mav;
	}
	
}
