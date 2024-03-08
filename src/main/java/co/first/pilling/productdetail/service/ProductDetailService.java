package co.first.pilling.productdetail.service;

public interface ProductDetailService {
	
	// 제품 상세보기
	ProductDetailVO productDetail(int productId);
	
	// 제품과 키워드 mapping 하기
	String productKeywordMapping(int productId);

}
