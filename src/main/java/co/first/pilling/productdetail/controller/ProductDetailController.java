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
		
		
		// 아래의 convertFilePath(String filePath) 이 함수를 사용하여 파일경로 convert 작업을 하였음
		String convertedFilePath1 = convertFilePath(productDetail.getFilepath1());
		String convertedFilePath2 = convertFilePath(productDetail.getFilepath2());
		
		// 다시 productDetailVO에 변환한 값을 setter로 저장한다.
		productDetail.setFilepath1(convertedFilePath1);
		productDetail.setFilepath2(convertedFilePath2);

		
	    model.addAttribute("detail", productDetail);
	    return "pilling/product/productdetailpage";
	}
	
	
	// =========================================== 1.START ===============================================================
	// 1. 이 부분은 사진경로가 절대경로로 DB에 저장되었지만, 웹에서 사용 못하니 웹용 uri로 바꿔주는 작업의 알고리즘 코드
	// 보통 사진을 데이터베이스에 저장하면 절대경로로 저장된다. 아래의 작업은 사용 할 때 필요없는 절대경로 부분을 "" 빈값으로 replace 하는 것이다.
	// 파일 경로 -> 웹파일 경로로 바꾸는 함수 (컨트롤러 밑에 두면 어디서든 사용 가능)
	private String convertFilePath(String filePath) {
		String webPath = filePath.replace("C:\\DEV\\eclipse_202103\\workspace\\PillingProject\\src\\main\\webapp\\", "");
		return webPath.replace("\\", "/");
	}
	// =========================================== 1.END ===============================================================

}
