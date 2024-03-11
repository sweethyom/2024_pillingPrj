package co.first.pilling.survey.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.first.pilling.survey.service.SurveyService;
import co.first.pilling.survey.service.SurveyVO;

@Controller
public class SurveyController {
	
	@Autowired
	private SurveyService surveyService;
	
	// 아래의 매핑 처리로직은 설문조사 응답 결과를 데이터베이스에 담는 작업을 하는 것이다.
	@PostMapping("/survey/submit")
	@ResponseBody
	public ResponseEntity<String> surveySubmit(@RequestBody List<SurveyVO> surveyResponses, HttpSession session) {
		
		// 아래는 DB에 필요한 로그인 할 때 session에 담긴 userNo 변수를 이 컨트롤러의 변수에 담아주는 것
		System.out.println("변환전 session userNo의 값은 : " + session.getAttribute("userNo"));
		Integer userNo = (Integer) session.getAttribute("userNo");
		System.out.println("변환 후 유저의 번호는 : " + userNo);
		System.out.println("==============================================================");
		if (userNo == null) {
			// 세션에 userNo가 없는 경우, 아래와 같은 에러 처리하기
			return new ResponseEntity<>("사용자 정보가 없습니다.", HttpStatus.FORBIDDEN);
		}
		
		// 아래의 로직은 front단에서 받은 결과를 surveyResponses에 담아, SurveyVO response에 담아 foreach로 input하는것
		for (SurveyVO vo : surveyResponses) {
			vo.setUserNo(userNo);
			System.out.println("유저의 번호는 : " + vo.getUserNo());
			System.out.println("유저가 선택한 키워드는 : " + vo.getKeywordId());
			surveyService.surveyResultInput(vo);
		}
		
		
		// HttpStatus가 (200 == ok) 성공하면 아래의 String을 출력한다.
		return new ResponseEntity<>("설문조사가 성공적으로 제출되었습니다.", HttpStatus.OK);
	}
	
	
	//ModelAndView는 모델과 뷰를 둘다 정의 할 때 사용할 수 있다.
	@RequestMapping("/survey/resultview")
	public @ResponseBody ModelAndView surveyResult(ModelAndView mav) {
		
		// 기본 적으로 List<SurveyVO>에 각 데이터베이스에서 가져 온 값을 넣어주는 작업을 하는 코드이다.
		List<SurveyVO> productList = surveyService.responseProductList();
		List<SurveyVO> keywordMappingList = surveyService.productKeywordMapping();
		
		// =========================================== 1. START ===============================================================
		// 1. 이 부분은 사진경로가 절대경로로 DB에 저장되었지만, 웹에서 사용 못하니 웹용 uri로 바꿔주는 작업의 알고리즘 코드
		// 웹에서 이미지를 로드하지 못해서, resources/부터 할 수 있도록 만드는 알고리즘 코드이다.
		for(SurveyVO product : productList) {
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
		for (SurveyVO mapping : keywordMappingList) {
			// 아래는 만들어진 Map(keywordMap)에 순회해서 나온 값을 Map 형태로 넣어주는것 (제품 ID와 제품키워드들을)
			keywordMap.put(mapping.getProductId(), mapping.getKeywords());
		}
		
		// 아래는 productList를 반복순회하여, ProductVO에 담긴 키워드 목록을 담아준다.
		for (SurveyVO product : productList) {
			String keywordsStr = keywordMap.get(product.getProductId());
			if (keywordsStr != null) {
				List<String> keywordsList = Arrays.asList(keywordsStr.split(",\\s*"));
				product.setKeywordName(keywordsList);
			}
		}
		// =========================================== 2. END ===============================================================

		// 아래 부분은 productList(DB에서 넘어오고 위에서 수정한 value들)을 productlist에 담아 JSP(Fornt)단에서 활용 가능하다.
		mav.addObject("productlist", productList);
		// 아래 부분은 내가 원하는 viewResolve에 값을 날려주기위해 설정한다.
		mav.setViewName("pilling/notiles/survey/surveypage");
		return mav;
	}

}
