package pack.model;

import org.springframework.stereotype.Component;

@Component
public class LikesDto {
	private int likes_id, review_id;
	private String user_id;
	private boolean likes_isLike;
	
	
	public int getLikes_id() {
		return likes_id;
	}
	public void setLikes_id(int likes_id) {
		this.likes_id = likes_id;
	}
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public boolean isLikes_isLike() {
		return likes_isLike;
	}
	public void setLikes_isLike(boolean likes_isLike) {
		this.likes_isLike = likes_isLike;
	}
	
	
}
