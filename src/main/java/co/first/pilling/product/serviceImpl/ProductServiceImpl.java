package co.first.pilling.product.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import co.first.pilling.product.map.ProductMapper;
import co.first.pilling.product.service.KeywordVO;
import co.first.pilling.product.service.ProductService;
import co.first.pilling.product.service.ProductVO;

@Service
@Primary
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductMapper pm;

	@Override
	public List<ProductVO> productAllList() {
		return pm.productAllList();
	}

	@Override
	public List<ProductVO> productKeywordMapping() {
		return pm.productKeywordMapping();
	}

	@Override
	public List<KeywordVO> checkboxAllKeywordName() {
		return pm.checkboxAllKeywordName();
	}

	@Override
	public List<ProductVO> filterByKeywords(List<String> keywords) {
		return pm.filterByKeywords(keywords);
	}

}
