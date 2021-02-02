package pack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RightController {

	@RequestMapping(value="right", method=RequestMethod.GET)
	public String gotoRightTest() {
		return "right";
	}
}
