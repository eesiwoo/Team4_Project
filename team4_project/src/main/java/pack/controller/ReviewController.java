package pack.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import pack.model.LikesDto;
import pack.model.ReviewDto;
import pack.model.ReviewInter;

@Controller
public class ReviewController {
	@Autowired
	private ReviewInter inter;
	
	@RequestMapping(value = "goodsDetail", method=RequestMethod.GET)
	public String goToReviewDetail() {
		
		return "goodsDetail";
	}
	
	//GoodsDtail에서 리뷰 리스트 불러오기
	@RequestMapping(value = "reviewList", method=RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> reviewList(@RequestParam("goods_id")int goods_id) {
		List<Map<String, String>> dataList = new ArrayList<Map<String,String>>();
		
		Map<String, String> data = null;
		List<ReviewDto> reviewList = inter.selectReview(goods_id);
		
		for(ReviewDto r:reviewList) {
			ArrayList<LikesDto> likesList = inter.countLikes(r.getReview_id());
			data = new HashMap<String, String>();
			
			data.put("review_id", Integer.toString(r.getReview_id()));
			data.put("review_asc", Integer.toString(r.getReview_asc()));
			data.put("review_title", r.getReview_title());
			data.put("review_content", r.getReview_content());
			data.put("user_id", r.getUser_id());
			data.put("review_date", r.getReview_date());
			data.put("likes_count",Integer.toString(r.getLikes_count()));
			data.put("review_viewCount",Integer.toString(r.getReview_asc()));
			dataList.add(data);
		}
		Map<String, Object> datas = new HashMap<String, Object>();
		datas.put("datas", dataList);
		
		
		return datas;
		
	}
}
