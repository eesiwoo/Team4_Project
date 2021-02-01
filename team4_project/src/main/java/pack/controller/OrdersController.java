package pack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OrdersController {
	
	
	@RequestMapping(value="orders", method=RequestMethod.POST)
	public String gotoOrderPage(OrdersBean bean) {
		return null;
	}
}
