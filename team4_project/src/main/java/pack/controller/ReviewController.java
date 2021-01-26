package pack.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pack.model.ReviewDto;
import pack.model.ReviewInter;

@Controller
public class ReviewController {
	@Autowired
	private ReviewInter inter;
	
	//GoodsDtail에서 리뷰 리스트 불러오기
	@RequestMapping(value = "reviewList", method=RequestMethod.GET)
	public Model reviewList(Model model,
							@RequestParam("goods_id")int goods_id) {

		ArrayList<ReviewDto> list = inter.selectReview(goods_id);
		model.addAttribute("reviews", list);
		
		return model;
	}
}
