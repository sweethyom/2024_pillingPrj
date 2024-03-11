package co.first.pilling.survey.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

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

}
