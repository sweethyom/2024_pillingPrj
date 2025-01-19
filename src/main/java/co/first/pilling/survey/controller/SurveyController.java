package co.first.pilling.survey.controller;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

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
    
    @PostMapping("/survey/submit")
    @ResponseBody
    public ResponseEntity<?> surveySubmit(@RequestBody List<SurveyVO> surveyResponses, HttpSession session) {
    	
    	// 사용자 정보 받아오기
    	String userGender = (String) session.getAttribute("userGender");
        Integer userNo = (Integer) session.getAttribute("userNo");
        
        // 시간 데이터 입력하기
        LocalDateTime now = LocalDateTime.now();
        ZoneId zoneId = ZoneId.of("Asia/Seoul");
        Date nowAsDate = Date.from(now.atZone(zoneId).toInstant());
        
        // 응답받은 설문조사 DB에 저장하기
        surveyResponses.forEach(vo -> {
            vo.setUserNo(userNo);
            vo.setResponseDate(nowAsDate);
            surveyService.surveyResultInput(vo);
        });
        
        List<SurveyVO> responseProductList = surveyService.responseProductList(userNo);
        
        // 성별에 따른 제품 필터링
        List<SurveyVO> filteredProductList = responseProductList.stream()
        		.filter(product -> !(userGender.equals("M") && product.getProductName().contains("여성")) &&
        				!(userGender.equals("F") && product.getProductName().contains("남성")))
        		.collect(Collectors.toList());
        
        // 사진 경로 변환
        filteredProductList.forEach(product -> {
            String webPath = product.getFilepath1().replace("C:\\DEV\\eclipse_202103\\workspace\\PillingProject\\src\\main\\webapp\\", "").replace("\\", "/");
            product.setFilepath1(webPath);
            System.out.println("변환된 파일 패스는" + webPath);
        });
        
        return new ResponseEntity<>(filteredProductList, HttpStatus.OK);
    }
}





