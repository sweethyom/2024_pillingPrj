package co.first.pilling.productdetail.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import co.first.pilling.productdetail.map.ProductDetailMapper;
import co.first.pilling.productdetail.service.ProductDetailService;
import co.first.pilling.productdetail.service.ProductDetailVO;

@Service
@Primary
public class ProductDetailServiceImpl implements ProductDetailService {
	
	@Autowired
	private ProductDetailMapper pdm;

	@Override
	public ProductDetailVO productDetail(int productId) {
		return pdm.productDetail(productId);
	}

}
