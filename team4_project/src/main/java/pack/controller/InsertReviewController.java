package pack.controller;
 
import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import pack.model.ReviewDto;
import pack.model.ReviewInter;

@Controller
public class InsertReviewController {
	private static final String FILE_PATH = "C:\\Users\\acorn\\git\\Team4_Project\\team4_project\\src\\main\\webapp\\resources\\review_img";
	
	@Autowired
	private ReviewInter inter;
	
	//리뷰 작성 페이지로 이동
	@RequestMapping(value = "insertReview", method = RequestMethod.GET)
	public String insertReviewForm(@RequestParam("goods_id")String goods_id,
								   @RequestParam("RorQ")String RorQ,
								   HttpServletRequest request,
								   HttpServletResponse response) throws Exception {
		System.out.println(RorQ);
		
		request.setAttribute("goods_id", goods_id);
		HttpSession session = request.getSession();
		String user_id = (String) session.getAttribute("user_id");
		if(user_id == null) {

			return "redirect:/goods?goods_id=" + goods_id + "&log=x";
		} else {
			if(RorQ.equals("review"))
				return "insertReviewForm";
			else
				return "insertQnaForm";
		}
	}
	
	//리뷰 작성
	@RequestMapping(value = "insertReview", method = RequestMethod.POST)
	public String insertReview(ReviewDto dto, HttpServletRequest request,
							   @RequestParam("review_file")MultipartFile file) throws Exception{
		
		//ID,글번호 셋팅
		HttpSession session = request.getSession();
		String user_id = (String) session.getAttribute("user_id");
		int goods_id = dto.getGoods_id();
		String asc = inter.currentReview_asc(dto);
		dto.setUser_id(user_id);
		if(asc == null)
			dto.setReview_asc(1);
		else
			dto.setReview_asc(Integer.parseInt(asc)+1);
		
		//파일 업로드
		String orgName = file.getOriginalFilename();
		String fileName = dto.getGoods_id() + "_" + dto.getReview_asc() + "_" + orgName;
		if(!orgName.isEmpty()) {
			file.transferTo(new File(FILE_PATH, fileName));
			dto.setReview_img("resources/review_img/" + fileName);
		}
		else {	}
		
		//결과 반환
		boolean b = inter.insertReview(dto);
			if(b)
				return "redirect:/goods?goods_id=" + goods_id ;
			else
				return "error";
	}
}
