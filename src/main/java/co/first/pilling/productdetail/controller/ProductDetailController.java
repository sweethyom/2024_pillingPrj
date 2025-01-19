package co.first.pilling.productdetail.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.first.pilling.productdetail.service.ProductDetailReviewlistService;
import co.first.pilling.productdetail.service.ProductDetailReviewlistVO;
import co.first.pilling.productdetail.service.ProductDetailService;
import co.first.pilling.productdetail.service.ProductDetailVO;

@Controller
public class ProductDetailController {

	@Autowired
	private ProductDetailService pds;
	
	@Autowired
	private ProductDetailReviewlistService pdrs;

	@RequestMapping("productdetailpage")
	public String productDetail(Model model, @RequestParam("productId") int productId, @RequestParam(value = "pageNum", defaultValue = "1") int pageNum, @RequestParam(value = "pageSize", defaultValue = "5") int pageSize) {
		
		ProductDetailVO productDetail = pds.productDetail(productId);
		String keywordsStr = pds.productKeywordMapping(productId);
		List<ProductDetailReviewlistVO> reviewList;
		
		// 리뷰 총 개수 가져오기
		int totalReviewCount = pdrs.getTotalReviewCount(productId);
		
		// 페이지 개수 미리 계산 (리뷰 총 개수 / 페이지 당 리뷰 개수)
		int totalPages = (int) Math.ceil((double) totalReviewCount / pageSize);
		
		// 페이지 번호와 페이지 크기를 기반으로 OFFSET 계산
		int offset = (pageNum - 1) * pageSize;
		
		// 계산한 것을 넣어주기
		reviewList = pdrs.reviewListPaged(productId, offset, pageSize);
		
		// =========================================== 2.START ===============================================================
		// 키워드를 스플릿으로 나눠주는것, 그리고 나눈 값을 KeywordName에 담아주었음
		if (keywordsStr != null) {
			List<String> keywordsList = Arrays.asList(keywordsStr.split(",\\s*"));
			productDetail.setKeywordName(keywordsList);
		}
		// =========================================== 2.END ===============================================================

		
		model.addAttribute("review", reviewList);
	    model.addAttribute("detail", productDetail);
	    model.addAttribute("totalPages", totalPages);
	    model.addAttribute("pageNum", pageNum);
	    return "pilling/product/productdetailpage";
	}

}
