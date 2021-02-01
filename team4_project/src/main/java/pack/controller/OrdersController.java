package pack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OrdersController {
	
	@RequestMapping(value="preOrders", method=RequestMethod.POST)
	public String gotoOrderPage(PreOrdersBean bean) {
//		db의 장바구니 갔다오기

		return "orders";
	}
	
	@RequestMapping(value="orders", method=RequestMethod.POST)
	public String DoOrderGoods(OrdersBean bean) {
		
		return null;
	}
}
