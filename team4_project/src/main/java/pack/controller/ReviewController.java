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
	
	private int totalReview;
	private int tenReview = 5; // 나중에 10으로 변경하기
	private int totalPage ;
	private int reviewSize;
	
	
	//페이징 처리
	private List<ReviewDto> setPage(List<ReviewDto> reviewList, int page){
		ArrayList<ReviewDto> listForPage = new ArrayList<ReviewDto>();
		//몇번째 페이지인지 확인 및 글 셋팅할 때 초기값으로 사용
		int setReviewSize = (page - 1) * tenReview ;
		
		//페이지에 글이 몇 개 들어가는지 체크 (마지막 페이지만 다름)
		if(tenReview <= reviewList.size()-setReviewSize) 
			reviewSize = tenReview;
		else
			reviewSize = reviewList.size() - setReviewSize;
		
		//보여줄 페이지의 글만 불러서 listForPage에 셋팅
		for(int i = 0; i <reviewSize; i++) {
			listForPage.add(i, reviewList.get(setReviewSize + i));
		}
		
		return listForPage;
	}
	
	// 총 페이지 수 얻기
	public int totalPage() { 
		totalPage = totalReview/tenReview;
		// 자투리 페이지 연산 처리
		if(totalReview % tenReview > 0) totalPage += 1; 
		return totalPage;
	}
	
	//goodsDetail 페이지로 이동
	@RequestMapping(value = "goodsDetail", method=RequestMethod.GET)
	public String goToReviewDetail() {
		return "goodsDetail";
	}
	
	//GoodsDtail에서 리뷰 리스트 불러오기
	@RequestMapping(value = "reviewList", method=RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> reviewList(@RequestParam("goods_id")int goods_id,
										  @RequestParam("page")int page) {
		List<Map<String, String>> dataList = new ArrayList<Map<String,String>>();
		
		Map<String, String> data = null;
		List<ReviewDto> reviewList = inter.selectReview(goods_id);
		List<ReviewDto> afterPageList = setPage(reviewList, page);
		
		totalReview = reviewList.size();
		
		
		for(ReviewDto r:afterPageList) {
			ArrayList<LikesDto> likesList = inter.countLikes(r.getReview_id());
			data = new HashMap<String, String>();
			
			data.put("review_id", Integer.toString(r.getReview_id()));
			data.put("review_asc", Integer.toString(r.getReview_asc()));
			data.put("review_title", r.getReview_title());
			data.put("review_content", r.getReview_content());
			data.put("user_id", r.getUser_id());
			data.put("review_date", r.getReview_date());
			data.put("likes_count",Integer.toString(likesList.size()));
			data.put("review_viewCount",Integer.toString(r.getReview_asc()));
			dataList.add(data);
		}
		Map<String, Object> datas = new HashMap<String, Object>();
		
		datas.put("datas", dataList);
		datas.put("page", page);
		datas.put("totalPage", totalPage());

		return datas;
	}

	
}
