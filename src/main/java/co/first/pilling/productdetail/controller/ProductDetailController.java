package co.first.pilling.productdetail.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.first.pilling.productdetail.service.ProductDetailService;
import co.first.pilling.productdetail.service.ProductDetailVO;

@Controller
public class ProductDetailController {

	@Autowired
	private ProductDetailService pds;

	@RequestMapping("productdetailpage")
	public String productDetail(Model model, @RequestParam("productId") int productId) {
		
		ProductDetailVO productDetail = pds.productDetail(productId);
		String keywordsStr = pds.productKeywordMapping(productId);
		
		// =========================================== 2.START ===============================================================
		// 키워드를 스플릿으로 나눠주는것, 그리고 나눈 값을 KeywordName에 담아주었음
		if (keywordsStr != null) {
			List<String> keywordsList = Arrays.asList(keywordsStr.split(",\\s*"));
			productDetail.setKeywordName(keywordsList);
		}
		// =========================================== 2.END ===============================================================

		
	    model.addAttribute("detail", productDetail);
	    return "pilling/product/productdetailpage";
	}

}
