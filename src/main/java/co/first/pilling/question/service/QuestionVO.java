package co.first.pilling.question.service;

import java.time.LocalDate;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class QuestionVO {
	private int questionId;
	private int userId;
	private String questionTitle;
	private String questionContent;
	private LocalDate questionDate;
	private String questionImg;
	private int questionHit;
}
