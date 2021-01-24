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
	public GoodstDto getProductSearch(String prd_no) {
		return null;
	}

	@Override
	public GoodstDto getProductRandom1List() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<GoodstDto> getProductList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<GoodstDto> getRandom4ProductList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<GoodstDto> getRecentProductList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<GoodstDto> getCartProductList() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
