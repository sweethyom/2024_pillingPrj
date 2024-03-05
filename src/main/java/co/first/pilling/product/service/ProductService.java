package co.first.pilling.product.service;

import java.util.List;


public interface ProductService {
	// 등록한 제품 제품 목록에 담을 때 사용
	List<ProductVO> productAllList();
	
	// 제품과 키워드를 매핑하기 위한 인터페이스
	List<ProductVO> productKeywordMapping();
}
