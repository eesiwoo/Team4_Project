package pack.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pack.model.ReviewDto;
import pack.model.ReviewInter;

@Controller
public class InsertReviewController {

	@Autowired
	private ReviewInter inter;
	
	//리뷰 작성 페이지로 이동
	@RequestMapping(value = "insertReview", method = RequestMethod.GET)
	public String insertReviewForm(@RequestParam("goods_id")String goods_id,
								   HttpServletRequest request) {
		request.setAttribute("goods_id", goods_id);

		return "insertReviewForm";
	}
	
	//리뷰 작성
	@RequestMapping(value = "insertReview", method = RequestMethod.POST)
	public String insertReview(@RequestParam("goods_id") String goods_id, ReviewDto dto) throws Exception{

		int id = Integer.parseInt(goods_id);
		
		dto.setGoods_id(id);
		dto.setUser_id("siwoo");
		dto.setReview_asc(inter.currentReview_asc(id)+1);
		//dto.setReview_id(inter.currentReview_id()+1);
		//dto.setReview_date();
		
		boolean b = inter.insertReview(dto);
			if(b)
				return "redirect:/goodsDetail?goods_id=" + goods_id ;
			else
				return "error";
	}
}
