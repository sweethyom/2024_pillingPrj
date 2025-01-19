package co.first.pilling.productdetail.service;

import java.util.List;

public interface ProductDetailReviewlistService {

	// 상품상세페이지에 리뷰 목록
	List<ProductDetailReviewlistVO> reviewList(int productId);
	
	// pagination을 하기 위해, product 총 개수 얻어오기
	int getTotalReviewCount(int productId);
	
	// 등록된 제품 pagination 사용하기 위한 인터페이스
	List<ProductDetailReviewlistVO> reviewListPaged(int productId, int offset, int pageSize);

}
