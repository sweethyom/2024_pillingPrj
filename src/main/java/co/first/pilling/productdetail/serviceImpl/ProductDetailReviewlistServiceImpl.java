package co.first.pilling.productdetail.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import co.first.pilling.productdetail.map.ProductDetailReviewlistMapper;
import co.first.pilling.productdetail.service.ProductDetailReviewlistService;
import co.first.pilling.productdetail.service.ProductDetailReviewlistVO;

@Service
@Primary
public class ProductDetailReviewlistServiceImpl implements ProductDetailReviewlistService {
	
	@Autowired
	ProductDetailReviewlistMapper reviewListMapper;

	@Override
	public List<ProductDetailReviewlistVO> reviewList(int productId) {
		return reviewListMapper.reviewList(productId);
	}

	// 총 개수를 알아야 pagination이 가능하니  review 총 개수 가져오기
	@Override
	public int getTotalReviewCount(int productId) {
		return reviewListMapper.getTotalReviewCount(productId);
	}

	@Override
	public List<ProductDetailReviewlistVO> reviewListPaged(int productId, int offset, int pageSize) {
		return reviewListMapper.reviewListPaged(productId, offset, pageSize);
	}

}
