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
	public ArrayList<ReviewDto> selectReview(ReviewDto dto) {
		return (ArrayList)getSqlSession().selectList("selectReview", dto);
	}
	
	@Override
	public ArrayList<ReviewDto> selectReviewOrderbyLikes(ReviewDto dto) {
		return (ArrayList)getSqlSession().selectList("selectReviewOrderbyLikes", dto);
	}
	
	@Override
	public ArrayList<ReviewDto> selectReviewOrderbyUserId(ReviewDto dto) {
		return (ArrayList)getSqlSession().selectList("selectReviewOrderbyUserId", dto);
	}
	
	@Override
	public ArrayList<ReviewDto> selectNotice(String review_orQna) {
		return (ArrayList)getSqlSession().selectList("selectNotice", review_orQna);
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
	public String currentReview_asc(ReviewDto dto) {
		return getSqlSession().selectOne("currentReview_asc",dto);
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
		return (ArrayList)getSqlSession().selectList("countLikes", review_id);
	}
	
	@Override
	public String selectLikes(LikesDto dto) {
		return  getSqlSession().selectOne("selectLikes", dto);
	}
	
	@Override
	public void deleteLikes(LikesDto dto) {
		 getSqlSession().delete("deleteLikes", dto);
		
	}
	
	@Override
	public void insertLikes(LikesDto dto) {
		 getSqlSession().insert("insertLikes", dto);
		
	}
	
	@Override
	public void likesUpdate(int review_id) {
		getSqlSession().update("likesUpdate", review_id);
		
	}
	
	@Override
	public void unLikesUpdate(int review_id) {
		getSqlSession().update("unLikesUpdate", review_id);
		
	}

	@Override
	public void updateLikes(ReviewDto dto) {
		// TODO Auto-generated method stub
		
	}

}
