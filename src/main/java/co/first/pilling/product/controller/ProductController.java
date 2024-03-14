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
	
	@RequestMapping("productpurchase")
	public @ResponseBody ModelAndView productPurchaseList(@RequestParam(value = "searchInput", required = false) String searchInput, @RequestParam(value = "pageNum", defaultValue = "1") int pageNum, @RequestParam(value = "pageSize", defaultValue = "9") int pageSize, ModelAndView mav) {

		// 검색이 적용될 경우를 위해 searchInput도 전달
	    int totalProductCount = ps.getTotalProductCount(searchInput); 
	    int totalPages = (int) Math.ceil((double) totalProductCount / pageSize);
		
	    // 페이지 번호와 페이지 크기를 기반으로 offset 계산
	    int offset = (pageNum - 1) * pageSize;

	    // 키워드 목록과 체크박스 키워드 목록을 조회
	    List<ProductVO> keywordMappingList = ps.productKeywordMapping();
	    List<KeywordVO> checkboxKeywordName = ps.checkboxAllKeywordName();

	    List<ProductVO> productList;

	    // 검색 입력이 있으면 검색 결과에 대한 페이징 처리, 없으면 전체 제품 목록에 대한 페이징 처리
	    if (searchInput != null && !searchInput.isEmpty()) {
	        productList = ps.productSearchPaged(searchInput, offset, pageSize);
	    } else {
	        productList = ps.productAllListPaged(offset, pageSize);
	    }

	    // 키워드 매핑 로직
	    Map<Integer, String> keywordMap = new HashMap<>();
	    for (ProductVO mapping : keywordMappingList) {
	        keywordMap.put(mapping.getProductId(), mapping.getKeywords());
	    }

	    for (ProductVO product : productList) {
	        String keywordsStr = keywordMap.get(product.getProductId());
	        if (keywordsStr != null) {
	            List<String> keywordsList = Arrays.asList(keywordsStr.split(",\\s*"));
	            product.setKeywordName(keywordsList);
	        }
	    }

	    // 페이징 처리된 제품 목록과 체크박스 키워드 목록을 뷰에 전달
	    mav.addObject("productlist", productList);
	    mav.addObject("checkboxList", checkboxKeywordName);
	    mav.addObject("pageNum", pageNum);
	    mav.addObject("totalPages", totalPages);
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
