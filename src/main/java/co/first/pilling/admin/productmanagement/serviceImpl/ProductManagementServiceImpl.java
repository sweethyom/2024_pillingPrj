package co.first.pilling.admin.productmanagement.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import co.first.pilling.admin.productmanagement.map.ProductManagementMapper;
import co.first.pilling.admin.productmanagement.service.ProductManagementService;
import co.first.pilling.admin.productmanagement.service.ProductManagementVO;

@Service
@Primary
public class ProductManagementServiceImpl implements ProductManagementService {

	@Autowired
	private ProductManagementMapper map;
	
	@Override
	public List<ProductManagementVO> productAllList() {
		return map.productAllList();
	}

	//제품 등록 처리
	@Override
	public int productInsert(ProductManagementVO vo) {
		return map.productInsert(vo);
	}

	@Override
	public int productUpadte(ProductManagementVO vo) {
		return map.productUpadte(vo);
	}
	
	
	//제품 삭제 처리
	@Override
	public int productDelete(ProductManagementVO vo) {
		return map.productDelete(vo);
	}
	
	// 제품 키워드 입력
	@Override
	public int keywordInsert(ProductManagementVO vo) {
		String[] inputArr = vo.getKeywordArr().split(",");
		int cnt = 0;
	    for(int i = 0; i < inputArr.length ; i++){
	    	vo.setKeywordId(inputArr[i]);
	    	map.keywordInsert(vo);
	    	cnt++;
	    }
		return cnt;
	}
	
	// 제품 키워드 수정
	@Override
	public int keywordUpdateInsert(ProductManagementVO vo) {
		String[] inputArr = vo.getKeywordArr().split(",");
		int cnt = 0;
	    for(int i = 0; i < inputArr.length ; i++){
	    	vo.setKeywordId(inputArr[i]);
	    	map.keywordUpdateInsert(vo);
	    	cnt++;
	    }
		return cnt;
	}

	@Override
	public int stockUpdate(ProductManagementVO vo) {
		return map.stockUpdate(vo);
	}

	@Override
	public int keywordUpdateDelete(ProductManagementVO vo) {
		return map.keywordUpdateDelete(vo);
	}

	@Override
	public ProductManagementVO getProductById(int productId) {
		return map.getProductById(productId);
	}

	@Override
	public List<Integer> productKeywordMapping(int productId) {
		return map.productKeywordMapping(productId);
	}





}
