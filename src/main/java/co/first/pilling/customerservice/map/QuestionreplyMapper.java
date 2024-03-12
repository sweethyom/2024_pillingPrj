package co.first.pilling.customerservice.map;

import java.util.List;

import co.first.pilling.customerservice.service.QuestionVO;
import co.first.pilling.customerservice.service.QuestionreplyVO;

public interface QuestionreplyMapper {
	List<QuestionreplyVO> questionreplySelectList(QuestionVO vo); // 문의 답변 조회
	
	int questionreplyInsert(QuestionreplyVO vo); // 문의 답변 작성

	int questionreplyUpdate(QuestionreplyVO vo); // 문의 답변 수정

	int questionreplyDelete(QuestionreplyVO vo); // 문의 답변 삭제
}
