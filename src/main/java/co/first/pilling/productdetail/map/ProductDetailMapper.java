package co.first.pilling.productdetail.map;


import co.first.pilling.productdetail.service.ProductDetailVO;

public interface ProductDetailMapper {
	
	// 제품 상세보기
	ProductDetailVO productDetail(int productId);
}
