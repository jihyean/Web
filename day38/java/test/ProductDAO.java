package test;

import java.util.ArrayList;

public class ProductDAO {

	ArrayList<ProductVO> datas;

	public ProductDAO() {
		datas = new ArrayList<ProductVO>();
		datas.add(new ProductVO(1, "티셔츠", 2000));
		datas.add(new ProductVO(2, "청바지", 3000));
		datas.add(new ProductVO(3, "운동화", 2900));
	}

	public boolean insert(ProductVO pvo) {
		return false;
	}

	public ArrayList<ProductVO> selectAll(ProductVO pvo) {
		return datas;
	}

	public ProductVO selectOne(ProductVO pvo) {

		if (pvo.getTmp().equals("장바구니중복")) {
			for (ProductVO v : datas) {
				if (pvo.getPk() == v.getPk()) { // PK인 아이디가 같다면 아이디 중복 ---> 가입불가
					v.setTmp("중복");
					return v;
				}
			}
			return null;
		}
		else {
			for (ProductVO v : datas) {
				if (pvo.getPk() == v.getPk()) {
					return v;
				}
			}
			return null;
		}

	}

	public boolean update(ProductVO pvo) {
		return false;
	}

	public boolean delete(ProductVO pvo) {
		return false;
	}

}
