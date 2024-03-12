package co.first.pilling.survey.service;

import java.util.List;

import co.first.pilling.product.service.ProductVO;

public interface SurveyService {
	
	// 설문조사 응답 결과로 매핑한 제품의 목록을 담을 때 사용
	List<SurveyVO> responseProductList(int userNo);
	
	// 설문조사 결과 입력(등록)
	int surveyResultInput(SurveyVO vo);
	
	// 제품과 키워드를 매핑하기 위한 인터페이스
	List<SurveyVO> productKeywordMapping();
}
