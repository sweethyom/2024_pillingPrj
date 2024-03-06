package co.first.pilling.product.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.first.pilling.product.service.KeywordVO;
import co.first.pilling.product.service.ProductVO;

public interface ProductMapper {
	// 등록한 제품 제품 목록에 담을 때 사용
	List<ProductVO> productAllList();
	
	// 제품과 키워드를 매핑하기 위한 인터페이스
	List<ProductVO> productKeywordMapping();
	
	// 체크 박스를 자동으로 리스트로 깔기 위한 쿼리 인터페이스
	List<KeywordVO> checkboxAllKeywordName();
	
	// 체크 박스의 값을 받아 필터링을 하기 위해 필요한 인터페이스
	List<ProductVO> filterByKeywords(@Param("list") List<String> keywords);
}
