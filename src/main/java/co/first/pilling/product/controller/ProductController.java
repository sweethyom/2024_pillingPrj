package co.first.pilling.product.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.first.pilling.product.service.KeywordVO;
import co.first.pilling.product.service.ProductService;
import co.first.pilling.product.service.ProductVO;

@Controller
public class ProductController {
	
	
	
	@Autowired
	private ProductService ps;
	
	//ModelAndView는 모델과 뷰를 둘다 정의 할 때 사용할 수 있다.
	@RequestMapping("productpurchase")
	public @ResponseBody ModelAndView productPurchaseList(ModelAndView mav) {
		
		// 기본 적으로 List<ProductVO>에 각 데이터베이스에서 가져 온 값을 넣어주는 작업을 하는 코드이다.
		List<ProductVO> productList = ps.productAllList();
		List<ProductVO> keywordMappingList = ps.productKeywordMapping();
		List<KeywordVO> checkboxKeywordName = ps.checkboxAllKeywordName();
		
		// =========================================== 1. START ===============================================================
		// 1. 이 부분은 사진경로가 절대경로로 DB에 저장되었지만, 웹에서 사용 못하니 웹용 uri로 바꿔주는 작업의 알고리즘 코드
		// 웹에서 이미지를 로드하지 못해서, resources/부터 할 수 있도록 만드는 알고리즘 코드이다.
		for(ProductVO product : productList) {
			String webPath = product.getFilepath1().replace("C:\\DEV\\eclipse_202103\\workspace\\PillingProject\\src\\main\\webapp\\", "");
			webPath = webPath.replace("\\", "/"); // 웹에서는 \(백슬래쉬)나 \\(윈도우슬래쉬)를 인식하지 못하여 /(웹구분자)로 바꿔주는 작업이다.
			product.setFilepath1(webPath); // 변환한 웹전용 webPath를 setFilepath1 여기로 담아준다.
		}
		// =========================================== 1. END ===============================================================
		
		
		// =========================================== 2. START ===============================================================
		// 2. 이 부분은 키워드가 아이디에 제대로 mapping되지 못하고, 전부 다 가져와서 깔아버리니 ID에 맞게 keyword를 매핑 해주는 알고리즘 코드
		// 아래는 키워드 매핑 정보를 저장하기 위해 map을 생성
		Map<Integer, String> keywordMap = new HashMap<Integer, String>();
		
		// ProductVO mapping 에다가 keywordMappingList 의 값을 넣고 존재하는 값만큼 for문을 실행
		for (ProductVO mapping : keywordMappingList) {
			// 아래는 만들어진 Map(keywordMap)에 순회해서 나온 값을 Map 형태로 넣어주는것 (제품 ID와 제품키워드들을)
			keywordMap.put(mapping.getProductId(), mapping.getKeywords());
		}
		
		// 아래는 productList를 반복순회하여, ProductVO에 담긴 키워드 목록을 담아준다.
		for (ProductVO product : productList) {
			String keywordsStr = keywordMap.get(product.getProductId());
			if (keywordsStr != null) {
				List<String> keywordsList = Arrays.asList(keywordsStr.split(",\\s*"));
				product.setKeywordName(keywordsList);
			}
		}
		// =========================================== 2. END ===============================================================

		// 아래 부분은 productList(DB에서 넘어오고 위에서 수정한 value들)을 productlist에 담아 JSP(Fornt)단에서 활용 가능하다.
		mav.addObject("productlist", productList);
		mav.addObject("checkboxList", checkboxKeywordName);
		// 아래 부분은 내가 원하는 viewResolve에 값을 날려주기위해 설정한다.
		mav.setViewName("pilling/menu/productpurchase");
		return mav;
	}
	
	
	// 제품구매 페이지에서 체크박스 비동기 갱신을 위한 컨트롤러 부분
	@GetMapping("filterproducts")
	public @ResponseBody List<ProductVO> filterProducts(@RequestParam("keywords") String keywords) {
		
		// 받아온 키워드 ID를 키워드 리스트로 생성
		List<String> keywordList = Arrays.asList(keywords.split(","));
		List<ProductVO> filteredProducts = ps.filterByKeywords(keywordList);
		List<ProductVO> keywordMappingList = ps.productKeywordMapping();
		
		// 웹에서 이미지를 로드하지 못해서, resources/부터 할 수 있도록 만드는 알고리즘 코드이다.
		for(ProductVO product : filteredProducts) {
			String webPath = product.getFilepath1().replace("C:\\DEV\\eclipse_202103\\workspace\\PillingProject\\src\\main\\webapp\\", "");
			webPath = webPath.replace("\\", "/"); // 웹에서는 \(백슬래쉬)나 \\(윈도우슬래쉬)를 인식하지 못하여 /(웹구분자)로 바꿔주는 작업이다.
			product.setFilepath1(webPath); // 변환한 웹전용 webPath를 setFilepath1 여기로 담아준다.
		}
		
		// 아래는 키워드 매핑 정보를 저장하기 위해 map을 생성
		Map<Integer, String> keywordMap = new HashMap<Integer, String>();
		
		// ProductVO mapping 에다가 keywordMappingList 의 값을 넣고 존재하는 값만큼 for문을 실행
		for (ProductVO mapping : keywordMappingList) {
			// 아래는 만들어진 Map(keywordMap)에 순회해서 나온 값을 Map 형태로 넣어주는것 (제품 ID와 제품키워드들을)
			keywordMap.put(mapping.getProductId(), mapping.getKeywords());
		}
		
		// 아래는 productList를 반복순회하여, ProductVO에 담긴 키워드 목록을 담아준다.
		for (ProductVO product : filteredProducts) {
			String keywordsStr = keywordMap.get(product.getProductId());
			if (keywordsStr != null) {
				List<String> keywordsList = Arrays.asList(keywordsStr.split(",\\s*"));
				product.setKeywordName(keywordsList);
			}
		}
		
		return filteredProducts;
	}
	
	
	// 체크 해제 시 전 품목을 반환 할 때 사용 하는 컨트롤러
	// 사용처는 productpurchase.jsp에 있고, products/all 검색하면 ajax쪽 삼항연산자가 나오니 참고!
	@GetMapping("products/all")
	public @ResponseBody List<ProductVO> getAllProducts() {
		
		List<ProductVO> productList = ps.productAllList();
		List<ProductVO> keywordMappingList = ps.productKeywordMapping();
		
		// 웹에서 이미지를 로드하지 못해서, resources/부터 할 수 있도록 만드는 알고리즘 코드이다.
		for(ProductVO product : productList) {
			String webPath = product.getFilepath1().replace("C:\\DEV\\eclipse_202103\\workspace\\PillingProject\\src\\main\\webapp\\", "");
			webPath = webPath.replace("\\", "/"); // 웹에서는 \(백슬래쉬)나 \\(윈도우슬래쉬)를 인식하지 못하여 /(웹구분자)로 바꿔주는 작업이다.
			product.setFilepath1(webPath); // 변환한 웹전용 webPath를 setFilepath1 여기로 담아준다.
		}
		
		// 아래는 키워드 매핑 정보를 저장하기 위해 map을 생성
		Map<Integer, String> keywordMap = new HashMap<Integer, String>();
		
		// ProductVO mapping 에다가 keywordMappingList 의 값을 넣고 존재하는 값만큼 for문을 실행
		for (ProductVO mapping : keywordMappingList) {
			// 아래는 만들어진 Map(keywordMap)에 순회해서 나온 값을 Map 형태로 넣어주는것 (제품 ID와 제품키워드들을)
			keywordMap.put(mapping.getProductId(), mapping.getKeywords());
		}
		
		// 아래는 productList를 반복순회하여, ProductVO에 담긴 키워드 목록을 담아준다.
		for (ProductVO product : productList) {
			String keywordsStr = keywordMap.get(product.getProductId());
			if (keywordsStr != null) {
				List<String> keywordsList = Arrays.asList(keywordsStr.split(",\\s*"));
				product.setKeywordName(keywordsList);
			}
		}
		
		return productList;
	}

}
