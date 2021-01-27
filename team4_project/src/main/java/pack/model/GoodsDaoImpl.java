package pack.model;

import java.util.List; 

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pack.controller.CartBean;

@Repository
public class GoodsDaoImpl extends SqlSessionDaoSupport implements GoodsDaoInter{
	@Autowired
	public GoodsDaoImpl(SqlSessionFactory factory) {
		setSqlSessionFactory(factory);
	}
	
	@Override
	public GoodsDto getGoodsSearch(int goods_id) {
		// 클릭된 상품 가져오기.
		return getSqlSession().selectOne("selectGoodsOne", goods_id);
	}

	@Override
	public List<GoodsDto> getGoodsList() {
		// 상품 리스트 가져오기
		return getSqlSession().selectList("selectGoodsAll");
	}

	@Override
	public List<GoodsDto> getGoodsRandomList(int num) {
		// 랜덤으로 2개 이상 상품 가져오기
		return getSqlSession().selectList("selectRandGoods", num);
	}


	@Override
	public List<GoodsDto> getCartGoodsList(String user_id) {
		return getSqlSession().selectList("selectCartListAll", user_id);
	}

	@Override
	public Boolean insertCartGoods(CartBean cartBean) {
		int re = getSqlSession().insert("insertCartGoods", cartBean);
		if (re == 1) return true; 
		else return false;
	}
	
	@Override
	public List<CategoryDto> selectCategory() {
		return getSqlSession().selectList("selectCategoryAll");
	}
	
	
}
