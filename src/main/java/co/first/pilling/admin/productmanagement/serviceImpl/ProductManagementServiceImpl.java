package co.first.pilling.admin.productmanagement.serviceImpl;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import co.first.pilling.admin.productmanagement.map.ProductManagementMapper;
import co.first.pilling.admin.productmanagement.service.ProductManagementService;
import co.first.pilling.admin.productmanagement.service.ProductManagementVO;

@Service
@Primary
public class ProductManagementServiceImpl implements ProductManagementService {

	@Autowired
	private ProductManagementMapper map;
	
	@Override
	public List<ProductManagementVO> productAddAllList() {
		return map.productAddAllList();
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

	@Override
	public int productDelete(ProductManagementVO vo) {
		return map.productDelete(vo);
	}

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

}
