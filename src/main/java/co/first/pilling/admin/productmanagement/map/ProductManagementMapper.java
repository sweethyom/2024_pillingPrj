package co.first.pilling.admin.productmanagement.map;

import java.util.List;

import co.first.pilling.admin.productmanagement.service.ProductManagementVO;

public interface ProductManagementMapper {
	// 등록한 제품 관리 게시판만들 때 사용 예정
	List<ProductManagementVO> productAddAllList();
	
	// 제품 등록
	int productInsert(ProductManagementVO vo);
	
	// 제품 수정
	int productUpadte(ProductManagementVO vo);
	
	// 제품 삭제
	int productDelete(ProductManagementVO vo);
	
	// 제품ID == 키워드ID 매핑테이블 등록
	void keywordInsert(ProductManagementVO vo);
}
