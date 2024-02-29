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
	public List<ProductManagementVO> productAddAllList() {
		return map.productAddAllList();
	}

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
		return map.keywordInsert(vo);
	}

}
