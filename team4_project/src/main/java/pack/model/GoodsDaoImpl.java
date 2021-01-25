package pack.model;

import java.util.List; 

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GoodsDaoImpl extends SqlSessionDaoSupport implements GoodsDaoInter{
	@Autowired
	public GoodsDaoImpl(SqlSessionFactory factory) {
		setSqlSessionFactory(factory);
	}
	
	@Override
	public GoodsDto getGoodsSearch(String goods_id) {
		return null;
	}

	@Override
	public GoodsDto getGoodsRandom1List() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<GoodsDto> getGoodsList() {
		// 상품 리스트 가져오기
		return getSqlSession().selectList("selectGoodsAll");
	}

	@Override
	public List<GoodsDto> getRandom4GoodsList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<GoodsDto> getRecentGoodsList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<GoodsDto> getCartGoodsList() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
