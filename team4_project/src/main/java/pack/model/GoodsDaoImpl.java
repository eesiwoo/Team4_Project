package pack.model;

import java.util.ArrayList;

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
	public ArrayList<GoodsDto> getGoodsList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<GoodsDto> getRandom4GoodsList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<GoodsDto> getRecentGoodsList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<GoodsDto> getCartGoodsList() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
