package pack.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewImpl extends SqlSessionDaoSupport implements ReviewInter {
	@Autowired
	public ReviewImpl (SqlSessionFactory factory) {
		setSqlSessionFactory(factory);
	}

	@Override
	public ArrayList<ReviewDto> selectReview(int goods_id) {
		return (ArrayList)getSqlSession().selectList("selectReview", goods_id);
	}
	
	@Override
	public ArrayList<ReviewDto> selectReviewOrderbyLikes(int goods_id) {
		return (ArrayList)getSqlSession().selectList("selectReviewOrderbyLikes", goods_id);
	}
	
	@Override
	public ArrayList<ReviewDto> selectReviewOrderbyUserId(int goods_id) {
		return (ArrayList)getSqlSession().selectList("selectReviewOrderbyUserId", goods_id);
	}
	
	@Override
	public ArrayList<ReviewDto> selectNotice() {
		return (ArrayList)getSqlSession().selectList("selectNotice");
	}


	@Override
	public boolean insertReview(ReviewDto dto) {
		int re = getSqlSession().insert("insertReview", dto);

		 if(re>0)
				return true;
			else
				return false;
	}

	@Override
	public boolean reviewUpdate() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean reviewDelete() {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public int currentReview_id() {
		return getSqlSession().selectOne("MaxReview_id");
	}

	@Override
	public String currentReview_asc(int goods_id) {
		return getSqlSession().selectOne("MaxReview_asc", goods_id);
	}

	@Override
	public int currentReview_answer() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public void viewCount(int review_id) {
		 getSqlSession().update("viewCount", review_id);
		
	}
	
	@Override
	public ArrayList<LikesDto> countLikes(int review_id) {
		return (ArrayList)getSqlSession().selectList("selectReview", review_id);
	}
	
	@Override
	public void updateLikes(ReviewDto dto) {
		getSqlSession().update("updateLikes");
	}

}
