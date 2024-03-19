package co.first.pilling.productdetail.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.first.pilling.productdetail.service.ProductDetailReviewlistVO;

public interface ProductDetailReviewlistMapper {
	
	// 상품상세페이지에 리뷰 목록
	List<ProductDetailReviewlistVO> reviewList(int productId);
	
	// pagination을 하기 위해, product 총 개수 얻어오기
	int getTotalReviewCount(int productId);
	
	// 등록된 제품 pagination 사용하기 위한 인터페이스
	List<ProductDetailReviewlistVO> reviewListPaged(@Param("productId") int productId, @Param("offset") int offset, @Param("pageSize") int pageSize);
	


}
