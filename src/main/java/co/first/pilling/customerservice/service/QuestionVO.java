package co.first.pilling.customerservice.service;

import java.time.LocalDate;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class QuestionVO {
	private int questionId;
	private int userNo;
	private String questionTitle;
	private String questionContent;
	private LocalDate questionDate;
	private String questionImg;
	private int questionHit;
	
	private int pageOffset;
	private int totalPage; //전체 게시글 갯수
	
	private String userId;
}
