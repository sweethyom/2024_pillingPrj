package co.first.pilling.survey.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import co.first.pilling.survey.map.SurveyMapper;
import co.first.pilling.survey.service.SurveyService;
import co.first.pilling.survey.service.SurveyVO;

@Service
@Primary
public class SurveyServiceImpl implements SurveyService {
	
	@Autowired
	private SurveyMapper sm;

	// 설문조사 결과값 입력
	@Override
	public int surveyResultInput(SurveyVO vo) {
		return sm.surveyResultInput(vo);
	}

	// 응답 받은 결과값을 제품과 매핑한 결과
	@Override
	public List<SurveyVO> responseProductList() {
		return sm.responseProductList();
	}

	@Override
	public List<SurveyVO> productKeywordMapping() {
		return sm.productKeywordMapping();
	}

}
