package co.first.pilling.survey.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import co.first.pilling.survey.service.SurveyService;

@Controller
public class SurveyController {
	
	@Autowired
	private SurveyService surveyService;

}
