package co.first.pilling.survey.map;

import co.first.pilling.survey.service.SurveyVO;

public interface SurveyMapper {

	// 설문조사 결과 입력(등록)
	int surveyResultInput(SurveyVO vo);
}
