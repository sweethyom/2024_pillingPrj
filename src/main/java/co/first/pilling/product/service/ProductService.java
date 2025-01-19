package co.first.pilling.product.service;

import java.util.List;


public interface ProductService {
	// 등록한 제품 제품 목록에 담을 때 사용
	List<ProductVO> productAllList();
	
	// 등록된 제품 pagination 사용하기 위한 인터페이스
	List<ProductVO> productAllListPaged(int offset, int pageSize);
	
	// pagination을 하기 위해, product 총 개수 얻어오기
	int getTotalProductCount(String searchInput);
	
	// 검색한 제품 목록에 담아 오기
	List<ProductVO> productSearchPaged(String searchInput, int offset, int pageSize);
	
	// 제품과 키워드를 매핑하기 위한 인터페이스
	List<ProductVO> productKeywordMapping();
	
	// 체크 박스를 자동으로 리스트로 깔기 위한 쿼리 인터페이스
	List<KeywordVO> checkboxAllKeywordName();
	
	// 체크 박스의 값을 받아 필터링을 하기 위해 필요한 인터페이스
	List<ProductVO> filterByKeywords(List<String> keywords);
	

}
