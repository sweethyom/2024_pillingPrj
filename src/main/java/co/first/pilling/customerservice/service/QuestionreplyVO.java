package co.first.pilling.customerservice.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class QuestionreplyVO {
	private int questionreplyId;
	private int questionId;
	private String questionreplyContent;
	private Date questionreplyDate;
}
