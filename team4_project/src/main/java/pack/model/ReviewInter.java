package pack.model;
 
import java.util.ArrayList;

public interface ReviewInter {

	//굿즈 디테일에서 보이는 리뷰 창 (goods_id를 가져와 글 목록 조회)
	public ArrayList<ReviewDto> selectReview(ReviewDto dto);
	
	public ArrayList<ReviewDto> selectReviewOrderbyLikes(ReviewDto dto);

	public ArrayList<ReviewDto> selectReviewOrderbyUserId(ReviewDto dto);

	public ArrayList<ReviewDto> selectNotice(String review_orQna);
	
	//리뷰 등록하기 ( 구매한 사람만 등록해야함. order 테이블이랑 조인해서 구매여부 확인 후 리뷰 등록할 수 있게 하기 )
 	public boolean insertReview(ReviewDto dto);
 	
 	//리뷰 수정하기 (작성자랑 로그인 된 아이디 비교해서 수정버튼 만들어주기)
 	public boolean reviewUpdate();
 	
 	//리뷰 삭제하기 (작성자랑 로그인 된 아이디 비교해서 삭제버튼 만들어주기)
 	public boolean reviewDelete();
 	
 	//전체글 번호 증가를 위해 현재 번호를 가져옴
 	public int currentReview_id();
 	
 	//상품글 번호 증가를 위해 현재 번호를 가져옴 / 댓글 작성 시에도 사용함
 	public String currentReview_asc(ReviewDto dto);
 	
 	//댓글이 메인 글 아래 달리도록 하기 위해 사용
 	public int currentReview_answer();

 	
 	//좋아요 수 조회하기
 	public ArrayList<LikesDto> countLikes(int review_id);
 	

 	//좋아요 수 업데이트하기
 	public void updateLikes(ReviewDto dto);
 	
 	//조회수 증가
 	public void viewCount(int review_id);

 	
 	//좋아요 데이터 조회
 	public String selectLikes(LikesDto dto);
 	
 	//좋아요 데이터 생성
 	public void insertLikes(LikesDto dto);
 	
 	//좋아요 데이터 삭제
 	public void deleteLikes(LikesDto dto);
 	
 	//좋아요 갯수 업데이트
 	public void likesUpdate(int review_id);
 	
 	public void unLikesUpdate(int review_id);

}
