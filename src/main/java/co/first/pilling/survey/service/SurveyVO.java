package co.first.pilling.survey.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SurveyVO {
	private int responseId;
	private int userNo;
	private int keywordId;
	private Date responseDate;
}
