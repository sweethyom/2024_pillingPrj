package co.first.pilling.admin.productmanagement.map;

import java.util.List;

import co.first.pilling.admin.productmanagement.service.ProductManagementVO;

public interface ProductManagementMapper {
	// 등록한 제품 관리 게시판만들 때 사용 예정
	List<ProductManagementVO> productAllList();
	
	// 제품 ID와 맞는 keywordId 매핑
	List<ProductManagementVO> productKeywordMapping(int productId);
	
	// 제품 등록
	int productInsert(ProductManagementVO vo);
	
	// 제품 수정
	int productUpadte(ProductManagementVO vo);
	
	// 제품 수정 시 키워드 삭제
	int keywordUpdateDelete(ProductManagementVO vo);
	
	// 제품 수정 시 키워드 삭제 후 재입력
	int keywordUpdateInsert(ProductManagementVO vo);
	
	// 제품 삭제
	int productDelete(ProductManagementVO vo);
	
	// 제품 수정 시 아이디에 맞는 값만 가져오기
	ProductManagementVO getProductById(int productId);
	
	// 제품ID == 키워드ID 매핑테이블 등록
	void keywordInsert(ProductManagementVO vo);
	
	// 입고량 추가
	int stockUpdate(ProductManagementVO vo);
}
