package co.first.pilling.product.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.first.pilling.product.service.ProductService;
import co.first.pilling.product.service.ProductVO;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService ps;
	
	//ModelAndView는 모델과 뷰를 둘다 정의 할 때 사용할 수 있다.
	@RequestMapping("productpurchase")
	public @ResponseBody ModelAndView productPurchaseList(ModelAndView mav) {
		
		// 아래는 먼저 productList객체에 ps.productAllList(); 이것으로 넘어온 값을 받아 정의한다.
		List<ProductVO> productList = ps.productAllList();
		List<ProductVO> productKeywordMapping = ps.productKeywordMapping();
		
		// 현재 절대경로로는 웹에서 이미지를 로드하지 못해서, resources/부터 할 수 있도록 만드는 알고리즘 코드이다.
		for(ProductVO product : productList) {
			String webPath = product.getFilepath1().replace("C:\\DEV\\eclipse_202103\\workspace\\PillingProject\\src\\main\\webapp\\", "");
			webPath = webPath.replace("\\", "/"); // 웹에서는 \(백슬래쉬)나 \\(윈도우슬래쉬)를 인식하지 못하여 /(웹구분자)로 바꿔주는 작업이다.
			product.setFilepath1(webPath); // 변환한 웹전용 webPath를 setFilepath1 여기로 담아준다.
		}
		
		for (ProductVO product : productKeywordMapping) {
		    String keywordsStr = product.getKeywords();
		    System.out.println(keywordsStr);
		    if (keywordsStr != null && !keywordsStr.isEmpty()) {
		        List<String> keywordsList = Arrays.asList(keywordsStr.split(",\\s*"));
		        product.setKeywordName(keywordsList); // setKeywordName 메서드는 List<String>을 받도록 구현되어야 합니다.
		        System.out.println("Product ID: " + product.getProductId() + ", Keywords: " + product.getKeywordName());
		    }
		}
		
		// 아래 부분은 내가 원하는 viewResolve에 값을 날려주기위해 설정한다.
		mav.setViewName("pilling/menu/productpurchase");
		// 아래 부분은 productList(DB에서 넘어오고 위에서 수정한 value들)을 productlist에 담아 JSP(Fornt)단에서 활용 가능하다.
		mav.addObject("productlist", productList);
		mav.addObject("keywordMapping", productKeywordMapping);
		return mav;
	}

}
