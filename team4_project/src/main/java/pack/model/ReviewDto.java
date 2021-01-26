package pack.model;

import org.springframework.stereotype.Component;

@Component
public class ReviewDto {
	private int review_id, goods_id, review_viewCount, review_asc, review_answer,  likes_count;
	private String user_id, review_title, review_content;
	private float review_star;
	private boolean review_isPrivate;
	private String review_date;
	
	public int getLikes_count() {
		return likes_count;
	}
	
	public void setLikes_count(int likes_count) {
		this.likes_count = likes_count;
	}
	
	public String getReview_date() {
		return review_date;
	}
	
	public void setReview_date(String review_date) {
		this.review_date = review_date;
	}
	
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	public int getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}
	public int getReview_viewCount() {
		return review_viewCount;
	}
	public void setReview_viewCount(int review_viewCount) {
		this.review_viewCount = review_viewCount;
	}
	public int getReview_asc() {
		return review_asc;
	}
	public void setReview_asc(int review_asc) {
		this.review_asc = review_asc;
	}
	public int getReview_answer() {
		return review_answer;
	}
	public void setReview_answer(int review_answer) {
		this.review_answer = review_answer;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public float getReview_star() {
		return review_star;
	}
	public void setReview_star(float review_star) {
		this.review_star = review_star;
	}
	public boolean isReview_isPrivate() {
		return review_isPrivate;
	}
	public void setReview_isPrivate(boolean review_isPrivate) {
		this.review_isPrivate = review_isPrivate;
	}
	
	
}
