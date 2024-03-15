package co.first.pilling.customerservice.service;

import java.util.List;

public interface QuestionreplyService {
	List<QuestionreplyVO> questionreplySelectList(QuestionVO vo); // 문의 답변 보기

	int questionreplyInsert(QuestionreplyVO vo); // 문의 답변 작성

	int questionreplyUpdate(QuestionreplyVO vo); // 문의 답변 수정

	int questionreplyDelete(QuestionreplyVO vo); // 문의 답변 삭제
}